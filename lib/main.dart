import 'dart:async';

import 'package:flutter/material.dart';
import 'package:l/l.dart';
import 'package:testapp/app/app.dart';
import 'package:testapp/runner/dependencies_scope.dart';
import 'package:testapp/runner/init.dart';

void main() {
  l.capture<void>(
    () => runZonedGuarded<void>(
      () {
        final initialization = InitializationExecutor();
        runApp(
          DependenciesScope(
            initialization: initialization(),
            splashScreen: const SizedBox.shrink(),
            child: const App(),
          ),
        );
      },
      l.e,
    ),
    LogOptions.defaultOptions,
  );
}
