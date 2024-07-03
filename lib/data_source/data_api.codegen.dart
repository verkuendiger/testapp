import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';

part '../generated/data_source/data_api.codegen.freezed.dart';
part '../generated/data_source/data_api.codegen.g.dart';

@RestApi()
abstract class DataApi {
  factory DataApi(Dio dio, {String baseUrl}) = _DataApi;

  @GET('/posts/{id}')
  Future<PostInfo> fetchPost({@Path('id') required int id});

  @GET('/posts')
  Future<List<PostInfo>> fetchPosts();

  @GET('/posts/{id}/comments')
  Future<List<CommentInfo>> fetchPostComments({@Path('id') required int id});

  @GET('/photos')
  Future<List<PhotosInfo>> fetchPhotos();
}

@freezed
class PhotosInfo with _$PhotosInfo {
  const factory PhotosInfo({
    required int id,
    required int albumId,
    required String title,
    required String url,
    required String thumbnailUrl,
  }) = _PhotosInfo;

  factory PhotosInfo.fromJson(Map<String, dynamic> json) =>
      _$PhotosInfoFromJson(json);
}

@freezed
class CommentInfo with _$CommentInfo {
  const factory CommentInfo({
    required int id,
    required int postId,
    required String name,
    required String email,
    required String body,
  }) = _CommentInfo;

  factory CommentInfo.fromJson(Map<String, dynamic> json) =>
      _$CommentInfoFromJson(json);
}

@freezed
class PostInfo with _$PostInfo {
  const factory PostInfo({
    required int id,
    required int userId,
    required String title,
    required String body,
  }) = _PostInfo;

  factory PostInfo.fromJson(Map<String, dynamic> json) =>
      _$PostInfoFromJson(json);
}
