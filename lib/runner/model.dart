import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:testapp/repository/users_repository.dart';

import 'dependencies_scope.dart';

abstract interface class Dependencies {
  factory Dependencies.of(BuildContext context) => InheritedDependencies.of(context);

  abstract final Dio dio;

  abstract final IUsersRepository usersRepository;
}
