// ignore_for_file: unreachable_from_main

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';

part '../generated/data_source/users_api.codegen.freezed.dart';
part '../generated/data_source/users_api.codegen.g.dart';

@RestApi(baseUrl: '/api/users')
abstract class UsersApi {
  factory UsersApi(Dio dio, {String baseUrl}) = _UsersApi;

  @GET('/{id}')
  Future<UserInfoDto> fetchUserInfo({@Path('id') required int id});

  @GET('?page={page}')
  Future<UsersInfoPerPageDto> fetcmUsersInfoPerPage({@Path('page') required int page});
}

@freezed
class UserInfoDto with _$UserInfoDto {
  const factory UserInfoDto({
    required UserInfo data,
  }) = _UserInfoDto;

  factory UserInfoDto.fromJson(Map<String, dynamic> json) => _$UserInfoDtoFromJson(json);
}


@freezed
class UsersInfoPerPageDto with _$UsersInfoPerPageDto {
  const factory UsersInfoPerPageDto({
    required List<UserInfo> data,
    required int totalPages,
  }) = _UsersInfoPerPageDto;

  factory UsersInfoPerPageDto.fromJson(Map<String, dynamic> json) => _$UsersInfoPerPageDtoFromJson(json);
}


@freezed
class UserInfo with _$UserInfo {
  const factory UserInfo({
     required int id,
     required String email,
     required String firstName,
     required String lastName,
     required String avatar,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);
}
