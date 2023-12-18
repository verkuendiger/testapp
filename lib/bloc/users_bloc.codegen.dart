import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testapp/data_source/users_api.codegen.dart';
import 'package:testapp/repository/users_repository.dart';

part '../generated/bloc/users_bloc.codegen.freezed.dart';

typedef _Event = UsersBlocEvent;
typedef _State = UsersBlocState;
typedef _EventHandler = EventHandler<_Event, _State>;
typedef _Emitter = Emitter<_State>;

@freezed
sealed class UsersBlocState with _$UsersBlocState {
  const factory UsersBlocState.none() = UsersBlocStateNone;

  const factory UsersBlocState.processing() = UsersBlocStateProcessing;

  const factory UsersBlocState.successFetchUser({
    required UserInfo userInfo,
  }) = UsersBlocStateSuccessFetchUser;

  const factory UsersBlocState.successFetchAllUsers({
    List<UserInfo>? usersInfo,
  }) = UsersBlocStateSuccessFetchAllUsers;

  const factory UsersBlocState.failure({
    @Default('Неизвестная ошибка') String errorMessage,
  }) = UsersBlocStateFailure;
}

@freezed
sealed class UsersBlocEvent with _$UsersBlocEvent {
  @literal
  const factory UsersBlocEvent.fetchUser({required int id}) = FetchUser;

  const factory UsersBlocEvent.fetchAllUsers() = FetchAllUsers;
}

class UsersBloc extends Bloc<_Event, _State> {
  UsersBloc({required IUsersRepository usersRepository})
      : _usersRepository = usersRepository,
        super(const _State.none()) {
    on<_Event>(_handler, transformer: bloc_concurrency.droppable());
  }
  // int a = 0;
  final IUsersRepository _usersRepository;
  // final AudioStreamRepository _audioStreamRepository;

  _EventHandler get _handler => (event, emit) => switch (event) {
        FetchUser() => _handleFetchUser(event, emit),
        FetchAllUsers() => _handleFetchAllUsers(event, emit),
      };

  Future<void> _handleFetchUser(
    FetchUser event,
    _Emitter emit,
  ) async {
    emit(const UsersBlocState.processing());
    try {
      final result = await _usersRepository.fetchUserInfo(id: event.id);
      emit(UsersBlocState.successFetchUser(userInfo: result));
    } catch (e) {
      if (e is DioException && e.response?.statusCode == 404) {
        emit(const UsersBlocState.failure(errorMessage: 'Пользователь не найден'));
      } else {
        emit(const UsersBlocState.failure());
      }
      rethrow;
    }
  }

  Future<void> _handleFetchAllUsers(FetchAllUsers event, _Emitter emit) async {
    emit(const UsersBlocState.processing());
    try {
      final result = await _usersRepository.fetchAllUsers();
      emit(UsersBlocState.successFetchAllUsers(usersInfo: result));
    } catch (e) {
        emit(const UsersBlocState.failure());
        rethrow;
    }
  }
}
