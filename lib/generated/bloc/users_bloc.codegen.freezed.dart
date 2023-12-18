// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../bloc/users_bloc.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() processing,
    required TResult Function(UserInfo userInfo) successFetchUser,
    required TResult Function(List<UserInfo>? usersInfo) successFetchAllUsers,
    required TResult Function(String errorMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? processing,
    TResult? Function(UserInfo userInfo)? successFetchUser,
    TResult? Function(List<UserInfo>? usersInfo)? successFetchAllUsers,
    TResult? Function(String errorMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? processing,
    TResult Function(UserInfo userInfo)? successFetchUser,
    TResult Function(List<UserInfo>? usersInfo)? successFetchAllUsers,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersBlocStateNone value) none,
    required TResult Function(UsersBlocStateProcessing value) processing,
    required TResult Function(UsersBlocStateSuccessFetchUser value)
        successFetchUser,
    required TResult Function(UsersBlocStateSuccessFetchAllUsers value)
        successFetchAllUsers,
    required TResult Function(UsersBlocStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersBlocStateNone value)? none,
    TResult? Function(UsersBlocStateProcessing value)? processing,
    TResult? Function(UsersBlocStateSuccessFetchUser value)? successFetchUser,
    TResult? Function(UsersBlocStateSuccessFetchAllUsers value)?
        successFetchAllUsers,
    TResult? Function(UsersBlocStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersBlocStateNone value)? none,
    TResult Function(UsersBlocStateProcessing value)? processing,
    TResult Function(UsersBlocStateSuccessFetchUser value)? successFetchUser,
    TResult Function(UsersBlocStateSuccessFetchAllUsers value)?
        successFetchAllUsers,
    TResult Function(UsersBlocStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersBlocStateCopyWith<$Res> {
  factory $UsersBlocStateCopyWith(
          UsersBlocState value, $Res Function(UsersBlocState) then) =
      _$UsersBlocStateCopyWithImpl<$Res, UsersBlocState>;
}

/// @nodoc
class _$UsersBlocStateCopyWithImpl<$Res, $Val extends UsersBlocState>
    implements $UsersBlocStateCopyWith<$Res> {
  _$UsersBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UsersBlocStateNoneImplCopyWith<$Res> {
  factory _$$UsersBlocStateNoneImplCopyWith(_$UsersBlocStateNoneImpl value,
          $Res Function(_$UsersBlocStateNoneImpl) then) =
      __$$UsersBlocStateNoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UsersBlocStateNoneImplCopyWithImpl<$Res>
    extends _$UsersBlocStateCopyWithImpl<$Res, _$UsersBlocStateNoneImpl>
    implements _$$UsersBlocStateNoneImplCopyWith<$Res> {
  __$$UsersBlocStateNoneImplCopyWithImpl(_$UsersBlocStateNoneImpl _value,
      $Res Function(_$UsersBlocStateNoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UsersBlocStateNoneImpl implements UsersBlocStateNone {
  const _$UsersBlocStateNoneImpl();

  @override
  String toString() {
    return 'UsersBlocState.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UsersBlocStateNoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() processing,
    required TResult Function(UserInfo userInfo) successFetchUser,
    required TResult Function(List<UserInfo>? usersInfo) successFetchAllUsers,
    required TResult Function(String errorMessage) failure,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? processing,
    TResult? Function(UserInfo userInfo)? successFetchUser,
    TResult? Function(List<UserInfo>? usersInfo)? successFetchAllUsers,
    TResult? Function(String errorMessage)? failure,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? processing,
    TResult Function(UserInfo userInfo)? successFetchUser,
    TResult Function(List<UserInfo>? usersInfo)? successFetchAllUsers,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersBlocStateNone value) none,
    required TResult Function(UsersBlocStateProcessing value) processing,
    required TResult Function(UsersBlocStateSuccessFetchUser value)
        successFetchUser,
    required TResult Function(UsersBlocStateSuccessFetchAllUsers value)
        successFetchAllUsers,
    required TResult Function(UsersBlocStateFailure value) failure,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersBlocStateNone value)? none,
    TResult? Function(UsersBlocStateProcessing value)? processing,
    TResult? Function(UsersBlocStateSuccessFetchUser value)? successFetchUser,
    TResult? Function(UsersBlocStateSuccessFetchAllUsers value)?
        successFetchAllUsers,
    TResult? Function(UsersBlocStateFailure value)? failure,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersBlocStateNone value)? none,
    TResult Function(UsersBlocStateProcessing value)? processing,
    TResult Function(UsersBlocStateSuccessFetchUser value)? successFetchUser,
    TResult Function(UsersBlocStateSuccessFetchAllUsers value)?
        successFetchAllUsers,
    TResult Function(UsersBlocStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class UsersBlocStateNone implements UsersBlocState {
  const factory UsersBlocStateNone() = _$UsersBlocStateNoneImpl;
}

/// @nodoc
abstract class _$$UsersBlocStateProcessingImplCopyWith<$Res> {
  factory _$$UsersBlocStateProcessingImplCopyWith(
          _$UsersBlocStateProcessingImpl value,
          $Res Function(_$UsersBlocStateProcessingImpl) then) =
      __$$UsersBlocStateProcessingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UsersBlocStateProcessingImplCopyWithImpl<$Res>
    extends _$UsersBlocStateCopyWithImpl<$Res, _$UsersBlocStateProcessingImpl>
    implements _$$UsersBlocStateProcessingImplCopyWith<$Res> {
  __$$UsersBlocStateProcessingImplCopyWithImpl(
      _$UsersBlocStateProcessingImpl _value,
      $Res Function(_$UsersBlocStateProcessingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UsersBlocStateProcessingImpl implements UsersBlocStateProcessing {
  const _$UsersBlocStateProcessingImpl();

  @override
  String toString() {
    return 'UsersBlocState.processing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersBlocStateProcessingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() processing,
    required TResult Function(UserInfo userInfo) successFetchUser,
    required TResult Function(List<UserInfo>? usersInfo) successFetchAllUsers,
    required TResult Function(String errorMessage) failure,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? processing,
    TResult? Function(UserInfo userInfo)? successFetchUser,
    TResult? Function(List<UserInfo>? usersInfo)? successFetchAllUsers,
    TResult? Function(String errorMessage)? failure,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? processing,
    TResult Function(UserInfo userInfo)? successFetchUser,
    TResult Function(List<UserInfo>? usersInfo)? successFetchAllUsers,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersBlocStateNone value) none,
    required TResult Function(UsersBlocStateProcessing value) processing,
    required TResult Function(UsersBlocStateSuccessFetchUser value)
        successFetchUser,
    required TResult Function(UsersBlocStateSuccessFetchAllUsers value)
        successFetchAllUsers,
    required TResult Function(UsersBlocStateFailure value) failure,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersBlocStateNone value)? none,
    TResult? Function(UsersBlocStateProcessing value)? processing,
    TResult? Function(UsersBlocStateSuccessFetchUser value)? successFetchUser,
    TResult? Function(UsersBlocStateSuccessFetchAllUsers value)?
        successFetchAllUsers,
    TResult? Function(UsersBlocStateFailure value)? failure,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersBlocStateNone value)? none,
    TResult Function(UsersBlocStateProcessing value)? processing,
    TResult Function(UsersBlocStateSuccessFetchUser value)? successFetchUser,
    TResult Function(UsersBlocStateSuccessFetchAllUsers value)?
        successFetchAllUsers,
    TResult Function(UsersBlocStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class UsersBlocStateProcessing implements UsersBlocState {
  const factory UsersBlocStateProcessing() = _$UsersBlocStateProcessingImpl;
}

/// @nodoc
abstract class _$$UsersBlocStateSuccessFetchUserImplCopyWith<$Res> {
  factory _$$UsersBlocStateSuccessFetchUserImplCopyWith(
          _$UsersBlocStateSuccessFetchUserImpl value,
          $Res Function(_$UsersBlocStateSuccessFetchUserImpl) then) =
      __$$UsersBlocStateSuccessFetchUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserInfo userInfo});

  $UserInfoCopyWith<$Res> get userInfo;
}

/// @nodoc
class __$$UsersBlocStateSuccessFetchUserImplCopyWithImpl<$Res>
    extends _$UsersBlocStateCopyWithImpl<$Res,
        _$UsersBlocStateSuccessFetchUserImpl>
    implements _$$UsersBlocStateSuccessFetchUserImplCopyWith<$Res> {
  __$$UsersBlocStateSuccessFetchUserImplCopyWithImpl(
      _$UsersBlocStateSuccessFetchUserImpl _value,
      $Res Function(_$UsersBlocStateSuccessFetchUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = null,
  }) {
    return _then(_$UsersBlocStateSuccessFetchUserImpl(
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoCopyWith<$Res> get userInfo {
    return $UserInfoCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value));
    });
  }
}

/// @nodoc

class _$UsersBlocStateSuccessFetchUserImpl
    implements UsersBlocStateSuccessFetchUser {
  const _$UsersBlocStateSuccessFetchUserImpl({required this.userInfo});

  @override
  final UserInfo userInfo;

  @override
  String toString() {
    return 'UsersBlocState.successFetchUser(userInfo: $userInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersBlocStateSuccessFetchUserImpl &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersBlocStateSuccessFetchUserImplCopyWith<
          _$UsersBlocStateSuccessFetchUserImpl>
      get copyWith => __$$UsersBlocStateSuccessFetchUserImplCopyWithImpl<
          _$UsersBlocStateSuccessFetchUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() processing,
    required TResult Function(UserInfo userInfo) successFetchUser,
    required TResult Function(List<UserInfo>? usersInfo) successFetchAllUsers,
    required TResult Function(String errorMessage) failure,
  }) {
    return successFetchUser(userInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? processing,
    TResult? Function(UserInfo userInfo)? successFetchUser,
    TResult? Function(List<UserInfo>? usersInfo)? successFetchAllUsers,
    TResult? Function(String errorMessage)? failure,
  }) {
    return successFetchUser?.call(userInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? processing,
    TResult Function(UserInfo userInfo)? successFetchUser,
    TResult Function(List<UserInfo>? usersInfo)? successFetchAllUsers,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (successFetchUser != null) {
      return successFetchUser(userInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersBlocStateNone value) none,
    required TResult Function(UsersBlocStateProcessing value) processing,
    required TResult Function(UsersBlocStateSuccessFetchUser value)
        successFetchUser,
    required TResult Function(UsersBlocStateSuccessFetchAllUsers value)
        successFetchAllUsers,
    required TResult Function(UsersBlocStateFailure value) failure,
  }) {
    return successFetchUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersBlocStateNone value)? none,
    TResult? Function(UsersBlocStateProcessing value)? processing,
    TResult? Function(UsersBlocStateSuccessFetchUser value)? successFetchUser,
    TResult? Function(UsersBlocStateSuccessFetchAllUsers value)?
        successFetchAllUsers,
    TResult? Function(UsersBlocStateFailure value)? failure,
  }) {
    return successFetchUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersBlocStateNone value)? none,
    TResult Function(UsersBlocStateProcessing value)? processing,
    TResult Function(UsersBlocStateSuccessFetchUser value)? successFetchUser,
    TResult Function(UsersBlocStateSuccessFetchAllUsers value)?
        successFetchAllUsers,
    TResult Function(UsersBlocStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (successFetchUser != null) {
      return successFetchUser(this);
    }
    return orElse();
  }
}

abstract class UsersBlocStateSuccessFetchUser implements UsersBlocState {
  const factory UsersBlocStateSuccessFetchUser(
          {required final UserInfo userInfo}) =
      _$UsersBlocStateSuccessFetchUserImpl;

  UserInfo get userInfo;
  @JsonKey(ignore: true)
  _$$UsersBlocStateSuccessFetchUserImplCopyWith<
          _$UsersBlocStateSuccessFetchUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsersBlocStateSuccessFetchAllUsersImplCopyWith<$Res> {
  factory _$$UsersBlocStateSuccessFetchAllUsersImplCopyWith(
          _$UsersBlocStateSuccessFetchAllUsersImpl value,
          $Res Function(_$UsersBlocStateSuccessFetchAllUsersImpl) then) =
      __$$UsersBlocStateSuccessFetchAllUsersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserInfo>? usersInfo});
}

/// @nodoc
class __$$UsersBlocStateSuccessFetchAllUsersImplCopyWithImpl<$Res>
    extends _$UsersBlocStateCopyWithImpl<$Res,
        _$UsersBlocStateSuccessFetchAllUsersImpl>
    implements _$$UsersBlocStateSuccessFetchAllUsersImplCopyWith<$Res> {
  __$$UsersBlocStateSuccessFetchAllUsersImplCopyWithImpl(
      _$UsersBlocStateSuccessFetchAllUsersImpl _value,
      $Res Function(_$UsersBlocStateSuccessFetchAllUsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usersInfo = freezed,
  }) {
    return _then(_$UsersBlocStateSuccessFetchAllUsersImpl(
      usersInfo: freezed == usersInfo
          ? _value._usersInfo
          : usersInfo // ignore: cast_nullable_to_non_nullable
              as List<UserInfo>?,
    ));
  }
}

/// @nodoc

class _$UsersBlocStateSuccessFetchAllUsersImpl
    implements UsersBlocStateSuccessFetchAllUsers {
  const _$UsersBlocStateSuccessFetchAllUsersImpl(
      {final List<UserInfo>? usersInfo})
      : _usersInfo = usersInfo;

  final List<UserInfo>? _usersInfo;
  @override
  List<UserInfo>? get usersInfo {
    final value = _usersInfo;
    if (value == null) return null;
    if (_usersInfo is EqualUnmodifiableListView) return _usersInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UsersBlocState.successFetchAllUsers(usersInfo: $usersInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersBlocStateSuccessFetchAllUsersImpl &&
            const DeepCollectionEquality()
                .equals(other._usersInfo, _usersInfo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_usersInfo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersBlocStateSuccessFetchAllUsersImplCopyWith<
          _$UsersBlocStateSuccessFetchAllUsersImpl>
      get copyWith => __$$UsersBlocStateSuccessFetchAllUsersImplCopyWithImpl<
          _$UsersBlocStateSuccessFetchAllUsersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() processing,
    required TResult Function(UserInfo userInfo) successFetchUser,
    required TResult Function(List<UserInfo>? usersInfo) successFetchAllUsers,
    required TResult Function(String errorMessage) failure,
  }) {
    return successFetchAllUsers(usersInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? processing,
    TResult? Function(UserInfo userInfo)? successFetchUser,
    TResult? Function(List<UserInfo>? usersInfo)? successFetchAllUsers,
    TResult? Function(String errorMessage)? failure,
  }) {
    return successFetchAllUsers?.call(usersInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? processing,
    TResult Function(UserInfo userInfo)? successFetchUser,
    TResult Function(List<UserInfo>? usersInfo)? successFetchAllUsers,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (successFetchAllUsers != null) {
      return successFetchAllUsers(usersInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersBlocStateNone value) none,
    required TResult Function(UsersBlocStateProcessing value) processing,
    required TResult Function(UsersBlocStateSuccessFetchUser value)
        successFetchUser,
    required TResult Function(UsersBlocStateSuccessFetchAllUsers value)
        successFetchAllUsers,
    required TResult Function(UsersBlocStateFailure value) failure,
  }) {
    return successFetchAllUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersBlocStateNone value)? none,
    TResult? Function(UsersBlocStateProcessing value)? processing,
    TResult? Function(UsersBlocStateSuccessFetchUser value)? successFetchUser,
    TResult? Function(UsersBlocStateSuccessFetchAllUsers value)?
        successFetchAllUsers,
    TResult? Function(UsersBlocStateFailure value)? failure,
  }) {
    return successFetchAllUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersBlocStateNone value)? none,
    TResult Function(UsersBlocStateProcessing value)? processing,
    TResult Function(UsersBlocStateSuccessFetchUser value)? successFetchUser,
    TResult Function(UsersBlocStateSuccessFetchAllUsers value)?
        successFetchAllUsers,
    TResult Function(UsersBlocStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (successFetchAllUsers != null) {
      return successFetchAllUsers(this);
    }
    return orElse();
  }
}

abstract class UsersBlocStateSuccessFetchAllUsers implements UsersBlocState {
  const factory UsersBlocStateSuccessFetchAllUsers(
          {final List<UserInfo>? usersInfo}) =
      _$UsersBlocStateSuccessFetchAllUsersImpl;

  List<UserInfo>? get usersInfo;
  @JsonKey(ignore: true)
  _$$UsersBlocStateSuccessFetchAllUsersImplCopyWith<
          _$UsersBlocStateSuccessFetchAllUsersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsersBlocStateFailureImplCopyWith<$Res> {
  factory _$$UsersBlocStateFailureImplCopyWith(
          _$UsersBlocStateFailureImpl value,
          $Res Function(_$UsersBlocStateFailureImpl) then) =
      __$$UsersBlocStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$UsersBlocStateFailureImplCopyWithImpl<$Res>
    extends _$UsersBlocStateCopyWithImpl<$Res, _$UsersBlocStateFailureImpl>
    implements _$$UsersBlocStateFailureImplCopyWith<$Res> {
  __$$UsersBlocStateFailureImplCopyWithImpl(_$UsersBlocStateFailureImpl _value,
      $Res Function(_$UsersBlocStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$UsersBlocStateFailureImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsersBlocStateFailureImpl implements UsersBlocStateFailure {
  const _$UsersBlocStateFailureImpl({this.errorMessage = 'Неизвестная ошибка'});

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'UsersBlocState.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersBlocStateFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersBlocStateFailureImplCopyWith<_$UsersBlocStateFailureImpl>
      get copyWith => __$$UsersBlocStateFailureImplCopyWithImpl<
          _$UsersBlocStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() processing,
    required TResult Function(UserInfo userInfo) successFetchUser,
    required TResult Function(List<UserInfo>? usersInfo) successFetchAllUsers,
    required TResult Function(String errorMessage) failure,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? processing,
    TResult? Function(UserInfo userInfo)? successFetchUser,
    TResult? Function(List<UserInfo>? usersInfo)? successFetchAllUsers,
    TResult? Function(String errorMessage)? failure,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? processing,
    TResult Function(UserInfo userInfo)? successFetchUser,
    TResult Function(List<UserInfo>? usersInfo)? successFetchAllUsers,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersBlocStateNone value) none,
    required TResult Function(UsersBlocStateProcessing value) processing,
    required TResult Function(UsersBlocStateSuccessFetchUser value)
        successFetchUser,
    required TResult Function(UsersBlocStateSuccessFetchAllUsers value)
        successFetchAllUsers,
    required TResult Function(UsersBlocStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsersBlocStateNone value)? none,
    TResult? Function(UsersBlocStateProcessing value)? processing,
    TResult? Function(UsersBlocStateSuccessFetchUser value)? successFetchUser,
    TResult? Function(UsersBlocStateSuccessFetchAllUsers value)?
        successFetchAllUsers,
    TResult? Function(UsersBlocStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersBlocStateNone value)? none,
    TResult Function(UsersBlocStateProcessing value)? processing,
    TResult Function(UsersBlocStateSuccessFetchUser value)? successFetchUser,
    TResult Function(UsersBlocStateSuccessFetchAllUsers value)?
        successFetchAllUsers,
    TResult Function(UsersBlocStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class UsersBlocStateFailure implements UsersBlocState {
  const factory UsersBlocStateFailure({final String errorMessage}) =
      _$UsersBlocStateFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$UsersBlocStateFailureImplCopyWith<_$UsersBlocStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UsersBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchUser,
    required TResult Function() fetchAllUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetchUser,
    TResult? Function()? fetchAllUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetchUser,
    TResult Function()? fetchAllUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUser value) fetchUser,
    required TResult Function(FetchAllUsers value) fetchAllUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchUser value)? fetchUser,
    TResult? Function(FetchAllUsers value)? fetchAllUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUser value)? fetchUser,
    TResult Function(FetchAllUsers value)? fetchAllUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersBlocEventCopyWith<$Res> {
  factory $UsersBlocEventCopyWith(
          UsersBlocEvent value, $Res Function(UsersBlocEvent) then) =
      _$UsersBlocEventCopyWithImpl<$Res, UsersBlocEvent>;
}

/// @nodoc
class _$UsersBlocEventCopyWithImpl<$Res, $Val extends UsersBlocEvent>
    implements $UsersBlocEventCopyWith<$Res> {
  _$UsersBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchUserImplCopyWith<$Res> {
  factory _$$FetchUserImplCopyWith(
          _$FetchUserImpl value, $Res Function(_$FetchUserImpl) then) =
      __$$FetchUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$FetchUserImplCopyWithImpl<$Res>
    extends _$UsersBlocEventCopyWithImpl<$Res, _$FetchUserImpl>
    implements _$$FetchUserImplCopyWith<$Res> {
  __$$FetchUserImplCopyWithImpl(
      _$FetchUserImpl _value, $Res Function(_$FetchUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$FetchUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@literal
class _$FetchUserImpl implements FetchUser {
  const _$FetchUserImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'UsersBlocEvent.fetchUser(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchUserImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchUserImplCopyWith<_$FetchUserImpl> get copyWith =>
      __$$FetchUserImplCopyWithImpl<_$FetchUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchUser,
    required TResult Function() fetchAllUsers,
  }) {
    return fetchUser(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetchUser,
    TResult? Function()? fetchAllUsers,
  }) {
    return fetchUser?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetchUser,
    TResult Function()? fetchAllUsers,
    required TResult orElse(),
  }) {
    if (fetchUser != null) {
      return fetchUser(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUser value) fetchUser,
    required TResult Function(FetchAllUsers value) fetchAllUsers,
  }) {
    return fetchUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchUser value)? fetchUser,
    TResult? Function(FetchAllUsers value)? fetchAllUsers,
  }) {
    return fetchUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUser value)? fetchUser,
    TResult Function(FetchAllUsers value)? fetchAllUsers,
    required TResult orElse(),
  }) {
    if (fetchUser != null) {
      return fetchUser(this);
    }
    return orElse();
  }
}

abstract class FetchUser implements UsersBlocEvent {
  const factory FetchUser({required final int id}) = _$FetchUserImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$FetchUserImplCopyWith<_$FetchUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllUsersImplCopyWith<$Res> {
  factory _$$FetchAllUsersImplCopyWith(
          _$FetchAllUsersImpl value, $Res Function(_$FetchAllUsersImpl) then) =
      __$$FetchAllUsersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllUsersImplCopyWithImpl<$Res>
    extends _$UsersBlocEventCopyWithImpl<$Res, _$FetchAllUsersImpl>
    implements _$$FetchAllUsersImplCopyWith<$Res> {
  __$$FetchAllUsersImplCopyWithImpl(
      _$FetchAllUsersImpl _value, $Res Function(_$FetchAllUsersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchAllUsersImpl implements FetchAllUsers {
  const _$FetchAllUsersImpl();

  @override
  String toString() {
    return 'UsersBlocEvent.fetchAllUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAllUsersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchUser,
    required TResult Function() fetchAllUsers,
  }) {
    return fetchAllUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetchUser,
    TResult? Function()? fetchAllUsers,
  }) {
    return fetchAllUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetchUser,
    TResult Function()? fetchAllUsers,
    required TResult orElse(),
  }) {
    if (fetchAllUsers != null) {
      return fetchAllUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUser value) fetchUser,
    required TResult Function(FetchAllUsers value) fetchAllUsers,
  }) {
    return fetchAllUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchUser value)? fetchUser,
    TResult? Function(FetchAllUsers value)? fetchAllUsers,
  }) {
    return fetchAllUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUser value)? fetchUser,
    TResult Function(FetchAllUsers value)? fetchAllUsers,
    required TResult orElse(),
  }) {
    if (fetchAllUsers != null) {
      return fetchAllUsers(this);
    }
    return orElse();
  }
}

abstract class FetchAllUsers implements UsersBlocEvent {
  const factory FetchAllUsers() = _$FetchAllUsersImpl;
}
