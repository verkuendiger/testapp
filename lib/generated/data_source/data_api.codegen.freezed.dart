// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../data_source/data_api.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PhotosInfo _$PhotosInfoFromJson(Map<String, dynamic> json) {
  return _PhotosInfo.fromJson(json);
}

/// @nodoc
mixin _$PhotosInfo {
  int get id => throw _privateConstructorUsedError;
  int get albumId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotosInfoCopyWith<PhotosInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosInfoCopyWith<$Res> {
  factory $PhotosInfoCopyWith(
          PhotosInfo value, $Res Function(PhotosInfo) then) =
      _$PhotosInfoCopyWithImpl<$Res, PhotosInfo>;
  @useResult
  $Res call(
      {int id, int albumId, String title, String url, String thumbnailUrl});
}

/// @nodoc
class _$PhotosInfoCopyWithImpl<$Res, $Val extends PhotosInfo>
    implements $PhotosInfoCopyWith<$Res> {
  _$PhotosInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? albumId = null,
    Object? title = null,
    Object? url = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      albumId: null == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotosInfoImplCopyWith<$Res>
    implements $PhotosInfoCopyWith<$Res> {
  factory _$$PhotosInfoImplCopyWith(
          _$PhotosInfoImpl value, $Res Function(_$PhotosInfoImpl) then) =
      __$$PhotosInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, int albumId, String title, String url, String thumbnailUrl});
}

/// @nodoc
class __$$PhotosInfoImplCopyWithImpl<$Res>
    extends _$PhotosInfoCopyWithImpl<$Res, _$PhotosInfoImpl>
    implements _$$PhotosInfoImplCopyWith<$Res> {
  __$$PhotosInfoImplCopyWithImpl(
      _$PhotosInfoImpl _value, $Res Function(_$PhotosInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? albumId = null,
    Object? title = null,
    Object? url = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_$PhotosInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      albumId: null == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotosInfoImpl implements _PhotosInfo {
  const _$PhotosInfoImpl(
      {required this.id,
      required this.albumId,
      required this.title,
      required this.url,
      required this.thumbnailUrl});

  factory _$PhotosInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotosInfoImplFromJson(json);

  @override
  final int id;
  @override
  final int albumId;
  @override
  final String title;
  @override
  final String url;
  @override
  final String thumbnailUrl;

  @override
  String toString() {
    return 'PhotosInfo(id: $id, albumId: $albumId, title: $title, url: $url, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotosInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.albumId, albumId) || other.albumId == albumId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, albumId, title, url, thumbnailUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotosInfoImplCopyWith<_$PhotosInfoImpl> get copyWith =>
      __$$PhotosInfoImplCopyWithImpl<_$PhotosInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotosInfoImplToJson(
      this,
    );
  }
}

abstract class _PhotosInfo implements PhotosInfo {
  const factory _PhotosInfo(
      {required final int id,
      required final int albumId,
      required final String title,
      required final String url,
      required final String thumbnailUrl}) = _$PhotosInfoImpl;

  factory _PhotosInfo.fromJson(Map<String, dynamic> json) =
      _$PhotosInfoImpl.fromJson;

  @override
  int get id;
  @override
  int get albumId;
  @override
  String get title;
  @override
  String get url;
  @override
  String get thumbnailUrl;
  @override
  @JsonKey(ignore: true)
  _$$PhotosInfoImplCopyWith<_$PhotosInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentInfo _$CommentInfoFromJson(Map<String, dynamic> json) {
  return _CommentInfo.fromJson(json);
}

/// @nodoc
mixin _$CommentInfo {
  int get id => throw _privateConstructorUsedError;
  int get postId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentInfoCopyWith<CommentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentInfoCopyWith<$Res> {
  factory $CommentInfoCopyWith(
          CommentInfo value, $Res Function(CommentInfo) then) =
      _$CommentInfoCopyWithImpl<$Res, CommentInfo>;
  @useResult
  $Res call({int id, int postId, String name, String email, String body});
}

/// @nodoc
class _$CommentInfoCopyWithImpl<$Res, $Val extends CommentInfo>
    implements $CommentInfoCopyWith<$Res> {
  _$CommentInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? name = null,
    Object? email = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentInfoImplCopyWith<$Res>
    implements $CommentInfoCopyWith<$Res> {
  factory _$$CommentInfoImplCopyWith(
          _$CommentInfoImpl value, $Res Function(_$CommentInfoImpl) then) =
      __$$CommentInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int postId, String name, String email, String body});
}

/// @nodoc
class __$$CommentInfoImplCopyWithImpl<$Res>
    extends _$CommentInfoCopyWithImpl<$Res, _$CommentInfoImpl>
    implements _$$CommentInfoImplCopyWith<$Res> {
  __$$CommentInfoImplCopyWithImpl(
      _$CommentInfoImpl _value, $Res Function(_$CommentInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? name = null,
    Object? email = null,
    Object? body = null,
  }) {
    return _then(_$CommentInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentInfoImpl implements _CommentInfo {
  const _$CommentInfoImpl(
      {required this.id,
      required this.postId,
      required this.name,
      required this.email,
      required this.body});

  factory _$CommentInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentInfoImplFromJson(json);

  @override
  final int id;
  @override
  final int postId;
  @override
  final String name;
  @override
  final String email;
  @override
  final String body;

  @override
  String toString() {
    return 'CommentInfo(id: $id, postId: $postId, name: $name, email: $email, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, postId, name, email, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentInfoImplCopyWith<_$CommentInfoImpl> get copyWith =>
      __$$CommentInfoImplCopyWithImpl<_$CommentInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentInfoImplToJson(
      this,
    );
  }
}

abstract class _CommentInfo implements CommentInfo {
  const factory _CommentInfo(
      {required final int id,
      required final int postId,
      required final String name,
      required final String email,
      required final String body}) = _$CommentInfoImpl;

  factory _CommentInfo.fromJson(Map<String, dynamic> json) =
      _$CommentInfoImpl.fromJson;

  @override
  int get id;
  @override
  int get postId;
  @override
  String get name;
  @override
  String get email;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$CommentInfoImplCopyWith<_$CommentInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostInfo _$PostInfoFromJson(Map<String, dynamic> json) {
  return _PostInfo.fromJson(json);
}

/// @nodoc
mixin _$PostInfo {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostInfoCopyWith<PostInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostInfoCopyWith<$Res> {
  factory $PostInfoCopyWith(PostInfo value, $Res Function(PostInfo) then) =
      _$PostInfoCopyWithImpl<$Res, PostInfo>;
  @useResult
  $Res call({int id, int userId, String title, String body});
}

/// @nodoc
class _$PostInfoCopyWithImpl<$Res, $Val extends PostInfo>
    implements $PostInfoCopyWith<$Res> {
  _$PostInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostInfoImplCopyWith<$Res>
    implements $PostInfoCopyWith<$Res> {
  factory _$$PostInfoImplCopyWith(
          _$PostInfoImpl value, $Res Function(_$PostInfoImpl) then) =
      __$$PostInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int userId, String title, String body});
}

/// @nodoc
class __$$PostInfoImplCopyWithImpl<$Res>
    extends _$PostInfoCopyWithImpl<$Res, _$PostInfoImpl>
    implements _$$PostInfoImplCopyWith<$Res> {
  __$$PostInfoImplCopyWithImpl(
      _$PostInfoImpl _value, $Res Function(_$PostInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$PostInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostInfoImpl implements _PostInfo {
  const _$PostInfoImpl(
      {required this.id,
      required this.userId,
      required this.title,
      required this.body});

  factory _$PostInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostInfoImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'PostInfo(id: $id, userId: $userId, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostInfoImplCopyWith<_$PostInfoImpl> get copyWith =>
      __$$PostInfoImplCopyWithImpl<_$PostInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostInfoImplToJson(
      this,
    );
  }
}

abstract class _PostInfo implements PostInfo {
  const factory _PostInfo(
      {required final int id,
      required final int userId,
      required final String title,
      required final String body}) = _$PostInfoImpl;

  factory _PostInfo.fromJson(Map<String, dynamic> json) =
      _$PostInfoImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$PostInfoImplCopyWith<_$PostInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
