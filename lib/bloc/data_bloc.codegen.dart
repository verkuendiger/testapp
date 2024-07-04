import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
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
    required final List<PostInfo> posts,
    required final List<PhotosInfo> photos,
    final Map<int, List<CommentInfo>>? comments,
  }) = DataBlocStateSuccessFetchPosts;

  const factory DataBlocState.failure({
    @Default('Неизвестная ошибка') final String errorMessage,
  }) = DataBlocStateFailure;
}

@freezed
sealed class DataBlocEvent with _$DataBlocEvent {
  @literal
  const factory DataBlocEvent.fetchPostComments({required final int id}) =
      FetchPostComments;

  const factory DataBlocEvent.fetchPosts() = FetchPosts;
}

class DataBloc extends Bloc<_Event, _State> {
  DataBloc({required final IDataRepository dataRepository})
      : _dataRepository = dataRepository,
        super(const _State.none()) {
    on<_Event>(_handler, transformer: bloc_concurrency.droppable());
  }

  final IDataRepository _dataRepository;

  _EventHandler get _handler => (final event, final emit) => switch (event) {
        FetchPostComments() => _handleFetchPostComments(event, emit),
        FetchPosts() => _handleFetchPosts(event, emit),
      };

  Future<void> _handleFetchPostComments(
    final FetchPostComments event,
    final _Emitter emit,
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
        comments = Map.from(curState.comments!)
          ..addAll({event.id: postComments});
      }

      emit(
        DataBlocState.successFetchPosts(
          posts: curState.posts,
          photos: curState.photos,
          comments: comments,
        ),
      );
    } on Object catch (_) {
      emit(const DataBlocState.failure());
      rethrow;
    }
  }

  Future<void> _handleFetchPosts(
    final FetchPosts event,
    final _Emitter emit,
  ) async {
    emit(const DataBlocState.processing());
    try {
      final posts = await _dataRepository.fetchPostsInfo();
      final photos = await _dataRepository.fetchPhotosInfo();
      emit(DataBlocState.successFetchPosts(posts: posts, photos: photos));
    } on Object catch (_) {
      emit(const DataBlocState.failure());
      rethrow;
    }
  }
}
