import 'dart:async';

// import 'package:dio/dio.dart';

import 'package:dio/dio.dart';
import 'package:testapp/data_source/users_api.codegen.dart';
import 'package:testapp/generated/define.g.dart';
import 'package:testapp/repository/users_repository.dart';

import 'model.dart';
import 'platform_init.dart';
// // ignore: uri_does_not_exist
// if (dart.library.html) 'package:chatapp/src/feature/dependencies/initialization/platform/initialization_js.dart';
// import 'package:l/l.dart';
import 'package:meta/meta.dart';

typedef _InitializationStep = FutureOr<void> Function($MutableDependencies dependencies);

class $MutableDependencies implements Dependencies {
  $MutableDependencies() : context = <String, Object?>{};

  /// Initialization context
  final Map<Object?, Object?> context;

  @override
  late Dio dio;

  @override
  late IUsersRepository usersRepository;
}

mixin InitializeDependencies {
  /// Initializes the app and returns a [Dependencies] object
  @protected
  Future<Dependencies> $initializeDependencies({
    void Function(int progress, String message)? onProgress,
  }) async {
    final steps = _initializationSteps;
    final dependencies = $MutableDependencies();
    final totalSteps = steps.length;
    int currentStep = 0;
    for (final step in _initializationSteps.entries) {
      currentStep++;
      final percent = (currentStep * 100 ~/ totalSteps).clamp(0, 100);
      onProgress?.call(percent, step.key);
      // l.v6('Initialization | $currentStep/$totalSteps ($percent%) | "${step.key}"');
      await step.value(dependencies);
    }
    return dependencies;
  }

  final Map<String, _InitializationStep> _initializationSteps = <String, _InitializationStep>{
    'Platform pre-initialization': (_) => $platformInitialization(),
    'Dio initialization': (dependencies) {
      final dio = Dio(BaseOptions(baseUrl: 'https://${AppEnvironment.baseUrl}/'));
      dependencies.dio = dio;
    },
    'User Repository initialization': (dependencies) => dependencies.usersRepository = UsersRepository(
          UsersApi(
            dependencies.dio,
          ),
        ),
  };
}
