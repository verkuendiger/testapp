import 'package:testapp/bloc/data_bloc.codegen.dart';
import 'package:testapp/data_source/data_api.codegen.dart';

abstract class IDataRepository {
  // ignore: unused_field
  final DataApi _api;
  IDataRepository(this._api);

  Future<List<PostInfo>> fetchPostsInfo();

  Future<List<CommentInfo>> fetchPostComments(int id);

  Future<List<PhotosInfo>> fetchPhotosInfo();
}

class DataRepository implements IDataRepository {
  DataRepository(this._api);

  @override
  final DataApi _api;

  @override
  Future<List<PostInfo>> fetchPostsInfo() async {
    return await _api.fetchPosts();
  }

  @override
  Future<List<PhotosInfo>> fetchPhotosInfo() async {
    return await _api.fetchPhotos();
  }

  @override
  Future<List<CommentInfo>> fetchPostComments(int id) async {
    return await _api.fetchPostComments(id: id);
  }
}
