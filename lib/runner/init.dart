import 'dart:async';

import 'package:flutter/foundation.dart'
    show ChangeNotifier, FlutterError, PlatformDispatcher, ValueListenable;
import 'package:flutter/services.dart' show DeviceOrientation, SystemChrome;
import 'package:flutter/widgets.dart'
    show WidgetsBinding, WidgetsFlutterBinding;
// import 'package:chatapp/src/common/util/error_util.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:l/l.dart';
import 'package:testapp/common/bloc_observer.dart';

import 'initialize_dependencies.dart';
import 'model.dart';

typedef InitializationProgressTuple = ({int progress, String message});

abstract interface class InitializationProgressListenable
    implements ValueListenable<InitializationProgressTuple> {}

class InitializationExecutor
    with ChangeNotifier, InitializeDependencies
    implements InitializationProgressListenable {
  InitializationExecutor();

  /// Ephemerally initializes the app and prepares it for use.
  Future<Dependencies>? _$currentInitialization;

  @override
  InitializationProgressTuple get value => _value;
  InitializationProgressTuple _value = (progress: 0, message: '');

  /// Initializes the app and prepares it for use.
  Future<Dependencies> call({
    final bool deferFirstFrame = false,
    final List<DeviceOrientation>? orientations,
    final void Function(int progress, String message)? onProgress,
    final void Function(Dependencies dependencies)? onSuccess,
    final void Function(Object error, StackTrace stackTrace)? onError,
  }) =>
      _$currentInitialization ??= Future<Dependencies>(() async {
        late final WidgetsBinding binding;
        final stopwatch = Stopwatch()..start();
        void notifyProgress(final int progress, final String message) {
          _value = (progress: progress.clamp(0, 100), message: message);
          onProgress?.call(_value.progress, _value.message);
          notifyListeners();
        }

        Bloc.observer = const AppBlocObserver();

        notifyProgress(0, 'Initializing');
        try {
          binding = WidgetsFlutterBinding.ensureInitialized();

          if (deferFirstFrame) binding.deferFirstFrame();
          await _catchExceptions();
          if (orientations != null) {
            await SystemChrome.setPreferredOrientations(orientations);
          }
          final dependencies =
              await $initializeDependencies(onProgress: notifyProgress)
                  .timeout(const Duration(minutes: 5));
          notifyProgress(100, 'Done');
          onSuccess?.call(dependencies);
          return dependencies;
        } on Object catch (error, stackTrace) {
          onError?.call(error, stackTrace);

          rethrow;
        } finally {
          stopwatch.stop();
          binding.addPostFrameCallback((final _) {
            // Closes splash screen, and show the app layout.
            if (deferFirstFrame) binding.allowFirstFrame();
          });
          _$currentInitialization = null;
        }
      });

  Future<void> _catchExceptions() async {
    try {
      PlatformDispatcher.instance.onError = (final error, final stackTrace) {
        l.e(error, stackTrace);

        return true;
      };

      final sourceFlutterError = FlutterError.onError;
      FlutterError.onError = (final details) {
        l.e(details.exception, details.stack ?? StackTrace.current);
        FlutterError.presentError(details);

        sourceFlutterError?.call(details);
      };
    } on Object catch (error, stacktrace) {
      l.e(error, stacktrace);
    }
  }
}
