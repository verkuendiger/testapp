import 'package:testapp/data_source/users_api.codegen.dart';

abstract class IUsersRepository {
  Future<UserInfo> fetchUserInfo({required int id});

  Future<List<UserInfo>> fetchAllUsers();
}

class UsersRepository implements IUsersRepository {
  UsersRepository(this._api);
  final UsersApi _api;

  @override
  Future<UserInfo> fetchUserInfo({required int id}) async {
    final userInfoDto = await _api.fetchUserInfo(id: id);
    return userInfoDto.data;
  }

  @override
  Future<List<UserInfo>> fetchAllUsers() async {
    final result = <UserInfo>[];
    for (var page = 1; ; page++) {
      final usersPerPageDto = await _api.fetcmUsersInfoPerPage(page: page);
      result.addAll(usersPerPageDto.data);
      if (page == usersPerPageDto.totalPages) {
        break;
      }
    }
    return result;
  }
}
