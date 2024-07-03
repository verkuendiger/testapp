// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../bloc/data_bloc.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DataBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() processing,
    required TResult Function(List<PostInfo> posts, List<PhotosInfo> photos,
            Map<int, List<CommentInfo>>? comments)
        successFetchPosts,
    required TResult Function(String errorMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? processing,
    TResult? Function(List<PostInfo> posts, List<PhotosInfo> photos,
            Map<int, List<CommentInfo>>? comments)?
        successFetchPosts,
    TResult? Function(String errorMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? processing,
    TResult Function(List<PostInfo> posts, List<PhotosInfo> photos,
            Map<int, List<CommentInfo>>? comments)?
        successFetchPosts,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataBlocStateNone value) none,
    required TResult Function(DataBlocStateProcessing value) processing,
    required TResult Function(DataBlocStateSuccessFetchPosts value)
        successFetchPosts,
    required TResult Function(DataBlocStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataBlocStateNone value)? none,
    TResult? Function(DataBlocStateProcessing value)? processing,
    TResult? Function(DataBlocStateSuccessFetchPosts value)? successFetchPosts,
    TResult? Function(DataBlocStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataBlocStateNone value)? none,
    TResult Function(DataBlocStateProcessing value)? processing,
    TResult Function(DataBlocStateSuccessFetchPosts value)? successFetchPosts,
    TResult Function(DataBlocStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataBlocStateCopyWith<$Res> {
  factory $DataBlocStateCopyWith(
          DataBlocState value, $Res Function(DataBlocState) then) =
      _$DataBlocStateCopyWithImpl<$Res, DataBlocState>;
}

/// @nodoc
class _$DataBlocStateCopyWithImpl<$Res, $Val extends DataBlocState>
    implements $DataBlocStateCopyWith<$Res> {
  _$DataBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DataBlocStateNoneImplCopyWith<$Res> {
  factory _$$DataBlocStateNoneImplCopyWith(_$DataBlocStateNoneImpl value,
          $Res Function(_$DataBlocStateNoneImpl) then) =
      __$$DataBlocStateNoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataBlocStateNoneImplCopyWithImpl<$Res>
    extends _$DataBlocStateCopyWithImpl<$Res, _$DataBlocStateNoneImpl>
    implements _$$DataBlocStateNoneImplCopyWith<$Res> {
  __$$DataBlocStateNoneImplCopyWithImpl(_$DataBlocStateNoneImpl _value,
      $Res Function(_$DataBlocStateNoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DataBlocStateNoneImpl implements DataBlocStateNone {
  const _$DataBlocStateNoneImpl();

  @override
  String toString() {
    return 'DataBlocState.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataBlocStateNoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() processing,
    required TResult Function(List<PostInfo> posts, List<PhotosInfo> photos,
            Map<int, List<CommentInfo>>? comments)
        successFetchPosts,
    required TResult Function(String errorMessage) failure,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? processing,
    TResult? Function(List<PostInfo> posts, List<PhotosInfo> photos,
            Map<int, List<CommentInfo>>? comments)?
        successFetchPosts,
    TResult? Function(String errorMessage)? failure,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? processing,
    TResult Function(List<PostInfo> posts, List<PhotosInfo> photos,
            Map<int, List<CommentInfo>>? comments)?
        successFetchPosts,
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
    required TResult Function(DataBlocStateNone value) none,
    required TResult Function(DataBlocStateProcessing value) processing,
    required TResult Function(DataBlocStateSuccessFetchPosts value)
        successFetchPosts,
    required TResult Function(DataBlocStateFailure value) failure,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataBlocStateNone value)? none,
    TResult? Function(DataBlocStateProcessing value)? processing,
    TResult? Function(DataBlocStateSuccessFetchPosts value)? successFetchPosts,
    TResult? Function(DataBlocStateFailure value)? failure,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataBlocStateNone value)? none,
    TResult Function(DataBlocStateProcessing value)? processing,
    TResult Function(DataBlocStateSuccessFetchPosts value)? successFetchPosts,
    TResult Function(DataBlocStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class DataBlocStateNone implements DataBlocState {
  const factory DataBlocStateNone() = _$DataBlocStateNoneImpl;
}

/// @nodoc
abstract class _$$DataBlocStateProcessingImplCopyWith<$Res> {
  factory _$$DataBlocStateProcessingImplCopyWith(
          _$DataBlocStateProcessingImpl value,
          $Res Function(_$DataBlocStateProcessingImpl) then) =
      __$$DataBlocStateProcessingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataBlocStateProcessingImplCopyWithImpl<$Res>
    extends _$DataBlocStateCopyWithImpl<$Res, _$DataBlocStateProcessingImpl>
    implements _$$DataBlocStateProcessingImplCopyWith<$Res> {
  __$$DataBlocStateProcessingImplCopyWithImpl(
      _$DataBlocStateProcessingImpl _value,
      $Res Function(_$DataBlocStateProcessingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DataBlocStateProcessingImpl implements DataBlocStateProcessing {
  const _$DataBlocStateProcessingImpl();

  @override
  String toString() {
    return 'DataBlocState.processing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataBlocStateProcessingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() processing,
    required TResult Function(List<PostInfo> posts, List<PhotosInfo> photos,
            Map<int, List<CommentInfo>>? comments)
        successFetchPosts,
    required TResult Function(String errorMessage) failure,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? processing,
    TResult? Function(List<PostInfo> posts, List<PhotosInfo> photos,
            Map<int, List<CommentInfo>>? comments)?
        successFetchPosts,
    TResult? Function(String errorMessage)? failure,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? processing,
    TResult Function(List<PostInfo> posts, List<PhotosInfo> photos,
            Map<int, List<CommentInfo>>? comments)?
        successFetchPosts,
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
    required TResult Function(DataBlocStateNone value) none,
    required TResult Function(DataBlocStateProcessing value) processing,
    required TResult Function(DataBlocStateSuccessFetchPosts value)
        successFetchPosts,
    required TResult Function(DataBlocStateFailure value) failure,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataBlocStateNone value)? none,
    TResult? Function(DataBlocStateProcessing value)? processing,
    TResult? Function(DataBlocStateSuccessFetchPosts value)? successFetchPosts,
    TResult? Function(DataBlocStateFailure value)? failure,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataBlocStateNone value)? none,
    TResult Function(DataBlocStateProcessing value)? processing,
    TResult Function(DataBlocStateSuccessFetchPosts value)? successFetchPosts,
    TResult Function(DataBlocStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class DataBlocStateProcessing implements DataBlocState {
  const factory DataBlocStateProcessing() = _$DataBlocStateProcessingImpl;
}

/// @nodoc
abstract class _$$DataBlocStateSuccessFetchPostsImplCopyWith<$Res> {
  factory _$$DataBlocStateSuccessFetchPostsImplCopyWith(
          _$DataBlocStateSuccessFetchPostsImpl value,
          $Res Function(_$DataBlocStateSuccessFetchPostsImpl) then) =
      __$$DataBlocStateSuccessFetchPostsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<PostInfo> posts,
      List<PhotosInfo> photos,
      Map<int, List<CommentInfo>>? comments});
}

/// @nodoc
class __$$DataBlocStateSuccessFetchPostsImplCopyWithImpl<$Res>
    extends _$DataBlocStateCopyWithImpl<$Res,
        _$DataBlocStateSuccessFetchPostsImpl>
    implements _$$DataBlocStateSuccessFetchPostsImplCopyWith<$Res> {
  __$$DataBlocStateSuccessFetchPostsImplCopyWithImpl(
      _$DataBlocStateSuccessFetchPostsImpl _value,
      $Res Function(_$DataBlocStateSuccessFetchPostsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? photos = null,
    Object? comments = freezed,
  }) {
    return _then(_$DataBlocStateSuccessFetchPostsImpl(
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostInfo>,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotosInfo>,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as Map<int, List<CommentInfo>>?,
    ));
  }
}

/// @nodoc

class _$DataBlocStateSuccessFetchPostsImpl
    implements DataBlocStateSuccessFetchPosts {
  const _$DataBlocStateSuccessFetchPostsImpl(
      {required final List<PostInfo> posts,
      required final List<PhotosInfo> photos,
      final Map<int, List<CommentInfo>>? comments})
      : _posts = posts,
        _photos = photos,
        _comments = comments;

  final List<PostInfo> _posts;
  @override
  List<PostInfo> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  final List<PhotosInfo> _photos;
  @override
  List<PhotosInfo> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  final Map<int, List<CommentInfo>>? _comments;
  @override
  Map<int, List<CommentInfo>>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableMapView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'DataBlocState.successFetchPosts(posts: $posts, photos: $photos, comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataBlocStateSuccessFetchPostsImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_posts),
      const DeepCollectionEquality().hash(_photos),
      const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataBlocStateSuccessFetchPostsImplCopyWith<
          _$DataBlocStateSuccessFetchPostsImpl>
      get copyWith => __$$DataBlocStateSuccessFetchPostsImplCopyWithImpl<
          _$DataBlocStateSuccessFetchPostsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() processing,
    required TResult Function(List<PostInfo> posts, List<PhotosInfo> photos,
            Map<int, List<CommentInfo>>? comments)
        successFetchPosts,
    required TResult Function(String errorMessage) failure,
  }) {
    return successFetchPosts(posts, photos, comments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? processing,
    TResult? Function(List<PostInfo> posts, List<PhotosInfo> photos,
            Map<int, List<CommentInfo>>? comments)?
        successFetchPosts,
    TResult? Function(String errorMessage)? failure,
  }) {
    return successFetchPosts?.call(posts, photos, comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? processing,
    TResult Function(List<PostInfo> posts, List<PhotosInfo> photos,
            Map<int, List<CommentInfo>>? comments)?
        successFetchPosts,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (successFetchPosts != null) {
      return successFetchPosts(posts, photos, comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataBlocStateNone value) none,
    required TResult Function(DataBlocStateProcessing value) processing,
    required TResult Function(DataBlocStateSuccessFetchPosts value)
        successFetchPosts,
    required TResult Function(DataBlocStateFailure value) failure,
  }) {
    return successFetchPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataBlocStateNone value)? none,
    TResult? Function(DataBlocStateProcessing value)? processing,
    TResult? Function(DataBlocStateSuccessFetchPosts value)? successFetchPosts,
    TResult? Function(DataBlocStateFailure value)? failure,
  }) {
    return successFetchPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataBlocStateNone value)? none,
    TResult Function(DataBlocStateProcessing value)? processing,
    TResult Function(DataBlocStateSuccessFetchPosts value)? successFetchPosts,
    TResult Function(DataBlocStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (successFetchPosts != null) {
      return successFetchPosts(this);
    }
    return orElse();
  }
}

abstract class DataBlocStateSuccessFetchPosts implements DataBlocState {
  const factory DataBlocStateSuccessFetchPosts(
          {required final List<PostInfo> posts,
          required final List<PhotosInfo> photos,
          final Map<int, List<CommentInfo>>? comments}) =
      _$DataBlocStateSuccessFetchPostsImpl;

  List<PostInfo> get posts;
  List<PhotosInfo> get photos;
  Map<int, List<CommentInfo>>? get comments;
  @JsonKey(ignore: true)
  _$$DataBlocStateSuccessFetchPostsImplCopyWith<
          _$DataBlocStateSuccessFetchPostsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataBlocStateFailureImplCopyWith<$Res> {
  factory _$$DataBlocStateFailureImplCopyWith(_$DataBlocStateFailureImpl value,
          $Res Function(_$DataBlocStateFailureImpl) then) =
      __$$DataBlocStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$DataBlocStateFailureImplCopyWithImpl<$Res>
    extends _$DataBlocStateCopyWithImpl<$Res, _$DataBlocStateFailureImpl>
    implements _$$DataBlocStateFailureImplCopyWith<$Res> {
  __$$DataBlocStateFailureImplCopyWithImpl(_$DataBlocStateFailureImpl _value,
      $Res Function(_$DataBlocStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$DataBlocStateFailureImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DataBlocStateFailureImpl implements DataBlocStateFailure {
  const _$DataBlocStateFailureImpl({this.errorMessage = 'Неизвестная ошибка'});

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'DataBlocState.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataBlocStateFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataBlocStateFailureImplCopyWith<_$DataBlocStateFailureImpl>
      get copyWith =>
          __$$DataBlocStateFailureImplCopyWithImpl<_$DataBlocStateFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() processing,
    required TResult Function(List<PostInfo> posts, List<PhotosInfo> photos,
            Map<int, List<CommentInfo>>? comments)
        successFetchPosts,
    required TResult Function(String errorMessage) failure,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? processing,
    TResult? Function(List<PostInfo> posts, List<PhotosInfo> photos,
            Map<int, List<CommentInfo>>? comments)?
        successFetchPosts,
    TResult? Function(String errorMessage)? failure,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? processing,
    TResult Function(List<PostInfo> posts, List<PhotosInfo> photos,
            Map<int, List<CommentInfo>>? comments)?
        successFetchPosts,
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
    required TResult Function(DataBlocStateNone value) none,
    required TResult Function(DataBlocStateProcessing value) processing,
    required TResult Function(DataBlocStateSuccessFetchPosts value)
        successFetchPosts,
    required TResult Function(DataBlocStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataBlocStateNone value)? none,
    TResult? Function(DataBlocStateProcessing value)? processing,
    TResult? Function(DataBlocStateSuccessFetchPosts value)? successFetchPosts,
    TResult? Function(DataBlocStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataBlocStateNone value)? none,
    TResult Function(DataBlocStateProcessing value)? processing,
    TResult Function(DataBlocStateSuccessFetchPosts value)? successFetchPosts,
    TResult Function(DataBlocStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class DataBlocStateFailure implements DataBlocState {
  const factory DataBlocStateFailure({final String errorMessage}) =
      _$DataBlocStateFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$DataBlocStateFailureImplCopyWith<_$DataBlocStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DataBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchPostComments,
    required TResult Function() fetchPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetchPostComments,
    TResult? Function()? fetchPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetchPostComments,
    TResult Function()? fetchPosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPostComments value) fetchPostComments,
    required TResult Function(FetchPosts value) fetchPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPostComments value)? fetchPostComments,
    TResult? Function(FetchPosts value)? fetchPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPostComments value)? fetchPostComments,
    TResult Function(FetchPosts value)? fetchPosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataBlocEventCopyWith<$Res> {
  factory $DataBlocEventCopyWith(
          DataBlocEvent value, $Res Function(DataBlocEvent) then) =
      _$DataBlocEventCopyWithImpl<$Res, DataBlocEvent>;
}

/// @nodoc
class _$DataBlocEventCopyWithImpl<$Res, $Val extends DataBlocEvent>
    implements $DataBlocEventCopyWith<$Res> {
  _$DataBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchPostCommentsImplCopyWith<$Res> {
  factory _$$FetchPostCommentsImplCopyWith(_$FetchPostCommentsImpl value,
          $Res Function(_$FetchPostCommentsImpl) then) =
      __$$FetchPostCommentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$FetchPostCommentsImplCopyWithImpl<$Res>
    extends _$DataBlocEventCopyWithImpl<$Res, _$FetchPostCommentsImpl>
    implements _$$FetchPostCommentsImplCopyWith<$Res> {
  __$$FetchPostCommentsImplCopyWithImpl(_$FetchPostCommentsImpl _value,
      $Res Function(_$FetchPostCommentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$FetchPostCommentsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@literal
class _$FetchPostCommentsImpl implements FetchPostComments {
  const _$FetchPostCommentsImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'DataBlocEvent.fetchPostComments(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPostCommentsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPostCommentsImplCopyWith<_$FetchPostCommentsImpl> get copyWith =>
      __$$FetchPostCommentsImplCopyWithImpl<_$FetchPostCommentsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchPostComments,
    required TResult Function() fetchPosts,
  }) {
    return fetchPostComments(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetchPostComments,
    TResult? Function()? fetchPosts,
  }) {
    return fetchPostComments?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetchPostComments,
    TResult Function()? fetchPosts,
    required TResult orElse(),
  }) {
    if (fetchPostComments != null) {
      return fetchPostComments(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPostComments value) fetchPostComments,
    required TResult Function(FetchPosts value) fetchPosts,
  }) {
    return fetchPostComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPostComments value)? fetchPostComments,
    TResult? Function(FetchPosts value)? fetchPosts,
  }) {
    return fetchPostComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPostComments value)? fetchPostComments,
    TResult Function(FetchPosts value)? fetchPosts,
    required TResult orElse(),
  }) {
    if (fetchPostComments != null) {
      return fetchPostComments(this);
    }
    return orElse();
  }
}

abstract class FetchPostComments implements DataBlocEvent {
  const factory FetchPostComments({required final int id}) =
      _$FetchPostCommentsImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$FetchPostCommentsImplCopyWith<_$FetchPostCommentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchPostsImplCopyWith<$Res> {
  factory _$$FetchPostsImplCopyWith(
          _$FetchPostsImpl value, $Res Function(_$FetchPostsImpl) then) =
      __$$FetchPostsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchPostsImplCopyWithImpl<$Res>
    extends _$DataBlocEventCopyWithImpl<$Res, _$FetchPostsImpl>
    implements _$$FetchPostsImplCopyWith<$Res> {
  __$$FetchPostsImplCopyWithImpl(
      _$FetchPostsImpl _value, $Res Function(_$FetchPostsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchPostsImpl implements FetchPosts {
  const _$FetchPostsImpl();

  @override
  String toString() {
    return 'DataBlocEvent.fetchPosts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchPostsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetchPostComments,
    required TResult Function() fetchPosts,
  }) {
    return fetchPosts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetchPostComments,
    TResult? Function()? fetchPosts,
  }) {
    return fetchPosts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetchPostComments,
    TResult Function()? fetchPosts,
    required TResult orElse(),
  }) {
    if (fetchPosts != null) {
      return fetchPosts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPostComments value) fetchPostComments,
    required TResult Function(FetchPosts value) fetchPosts,
  }) {
    return fetchPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPostComments value)? fetchPostComments,
    TResult? Function(FetchPosts value)? fetchPosts,
  }) {
    return fetchPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPostComments value)? fetchPostComments,
    TResult Function(FetchPosts value)? fetchPosts,
    required TResult orElse(),
  }) {
    if (fetchPosts != null) {
      return fetchPosts(this);
    }
    return orElse();
  }
}

abstract class FetchPosts implements DataBlocEvent {
  const factory FetchPosts() = _$FetchPostsImpl;
}
