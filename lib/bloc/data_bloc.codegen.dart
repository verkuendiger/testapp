import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testapp/data_source/data_api.codegen.dart';
import 'package:testapp/repository/data_repository.dart';

part '../generated/bloc/data_bloc.codegen.freezed.dart';

typedef _Event = DataBlocEvent;
typedef _State = DataBlocState;
typedef _EventHandler = EventHandler<_Event, _State>;
typedef _Emitter = Emitter<_State>;

@freezed
sealed class DataBlocState with _$DataBlocState {
  const factory DataBlocState.none() = DataBlocStateNone;

  const factory DataBlocState.processing() = DataBlocStateProcessing;

  const factory DataBlocState.successFetchPosts({
    required List<PostInfo> posts,
    required List<PhotosInfo> photos,
    Map<int, List<CommentInfo>>? comments,
  }) = DataBlocStateSuccessFetchPosts;

  const factory DataBlocState.failure({
    @Default('Неизвестная ошибка') String errorMessage,
  }) = DataBlocStateFailure;
}

@freezed
sealed class DataBlocEvent with _$DataBlocEvent {
  @literal
  const factory DataBlocEvent.fetchPostComments({required int id}) =
      FetchPostComments;

  const factory DataBlocEvent.fetchPosts() = FetchPosts;
}

class DataBloc extends Bloc<_Event, _State> {
  DataBloc({required IDataRepository dataRepository})
      : _dataRepository = dataRepository,
        super(const _State.none()) {
    on<_Event>(_handler, transformer: bloc_concurrency.droppable());
  }

  final IDataRepository _dataRepository;

  _EventHandler get _handler => (event, emit) => switch (event) {
        FetchPostComments() => _handleFetchPostComments(event, emit),
        FetchPosts() => _handleFetchPosts(event, emit),
      };

  Future<void> _handleFetchPostComments(
    FetchPostComments event,
    _Emitter emit,
  ) async {
    try {
      final curState = state as DataBlocStateSuccessFetchPosts;

      if (curState.comments != null &&
          curState.comments!.containsKey(event.id)) {
        return;
      }

      final postComments = await _dataRepository.fetchPostComments(event.id);
      final Map<int, List<CommentInfo>> comments;
      if (curState.comments == null) {
        comments = {event.id: postComments};
      } else {
        comments = Map.from(curState.comments!);
        comments.addAll({event.id: postComments});
      }

      emit(DataBlocState.successFetchPosts(
          posts: curState.posts, photos: curState.photos, comments: comments));
    } catch (e) {
      if (e is DioException && e.response?.statusCode == 404) {
        emit(const DataBlocState.failure(
            errorMessage: 'Пользователь не найден'));
      } else {
        emit(const DataBlocState.failure());
      }
      rethrow;
    }
  }

  Future<void> _handleFetchPosts(FetchPosts event, _Emitter emit) async {
    emit(const DataBlocState.processing());
    try {
      final posts = await _dataRepository.fetchPostsInfo();
      final photos = await _dataRepository.fetchPhotosInfo();
      emit(DataBlocState.successFetchPosts(posts: posts, photos: photos));
    } catch (e) {
      emit(const DataBlocState.failure());
      rethrow;
    }
  }
}
