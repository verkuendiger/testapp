import 'dart:async';

// import 'package:dio/dio.dart';

import 'package:dio/dio.dart';

// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:testapp/data_source/data_api.codegen.dart';
import 'package:testapp/generated/define.g.dart';
import 'package:testapp/repository/data_repository.dart';

import 'model.dart';

typedef _InitializationStep = FutureOr<void> Function(
    // ignore: require_trailing_commas
    $MutableDependencies dependencies);

class $MutableDependencies implements Dependencies {
  $MutableDependencies() : context = <String, Object?>{};

  /// Initialization context
  final Map<Object?, Object?> context;

  @override
  late Dio dio;

  @override
  late IDataRepository dataRepository;
}

mixin InitializeDependencies {
  /// Initializes the app and returns a [Dependencies] object
  @protected
  Future<Dependencies> $initializeDependencies({
    final void Function(int progress, String message)? onProgress,
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

  final Map<String, _InitializationStep> _initializationSteps =
      <String, _InitializationStep>{
    'Dio initialization': (final dependencies) {
      final dio =
          Dio(BaseOptions(baseUrl: 'https://${AppEnvironment.baseUrl}/'));
      dependencies.dio = dio;
    },
    'User Repository initialization': (final dependencies) =>
        dependencies.dataRepository = DataRepository(
          DataApi(
            dependencies.dio,
          ),
        ),
  };
}
