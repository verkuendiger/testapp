import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';

part '../generated/data_source/data_api.codegen.freezed.dart';
part '../generated/data_source/data_api.codegen.g.dart';

@RestApi()
abstract class DataApi {
  factory DataApi(final Dio dio, {final String baseUrl}) = _DataApi;

  @GET('/posts/{id}')
  Future<PostInfo> fetchPost({@Path('id') required final int id});

  @GET('/posts')
  Future<List<PostInfo>> fetchPosts();

  @GET('/posts/{id}/comments')
  Future<List<CommentInfo>> fetchPostComments({
    @Path('id') required final int id,
  });

  @GET('/photos')
  Future<List<PhotosInfo>> fetchPhotos();
}

@freezed
class PhotosInfo with _$PhotosInfo {
  const factory PhotosInfo({
    required final int id,
    required final int albumId,
    required final String title,
    required final String url,
    required final String thumbnailUrl,
  }) = _PhotosInfo;

  factory PhotosInfo.fromJson(final Map<String, dynamic> json) =>
      _$PhotosInfoFromJson(json);
}

@freezed
class CommentInfo with _$CommentInfo {
  const factory CommentInfo({
    required final int id,
    required final int postId,
    required final String name,
    required final String email,
    required final String body,
  }) = _CommentInfo;

  factory CommentInfo.fromJson(final Map<String, dynamic> json) =>
      _$CommentInfoFromJson(json);
}

@freezed
class PostInfo with _$PostInfo {
  const factory PostInfo({
    required final int id,
    required final int userId,
    required final String title,
    required final String body,
  }) = _PostInfo;

  factory PostInfo.fromJson(final Map<String, dynamic> json) =>
      _$PostInfoFromJson(json);
}
