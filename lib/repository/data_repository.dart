import 'package:testapp/data_source/data_api.codegen.dart';

abstract class IDataRepository {
  IDataRepository(this._api);
  // ignore: unused_field
  final DataApi _api;

  Future<List<PostInfo>> fetchPostsInfo();

  Future<List<CommentInfo>> fetchPostComments(final int id);

  Future<List<PhotosInfo>> fetchPhotosInfo();
}

class DataRepository implements IDataRepository {
  DataRepository(this._api);

  @override
  final DataApi _api;

  @override
  Future<List<PostInfo>> fetchPostsInfo() async => _api.fetchPosts();

  @override
  Future<List<PhotosInfo>> fetchPhotosInfo() async => _api.fetchPhotos();

  @override
  Future<List<CommentInfo>> fetchPostComments(final int id) async =>
      _api.fetchPostComments(id: id);
}
