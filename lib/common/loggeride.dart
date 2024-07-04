import 'package:flutter/material.dart';
import 'package:l/l.dart';
// ignore: depend_on_referenced_packages
import 'package:stack_trace/stack_trace.dart';

extension on LogLevel {
  /// Emoji for each log level
  String get emoji => maybeWhen(
        shout: () => 'S',
        error: () => 'E',
        warning: () => 'W',
        info: () => 'I',
        debug: () => 'D',
        orElse: () => 'OE',
      );
}

class L {
  static void i(final Object message) => l.i(message);

  static void w(final Object message, [final StackTrace? stackTrace]) =>
      l.w(message, stackTrace);

  static void e(final Object message, [final StackTrace? stackTrace]) =>
      l.e(message, stackTrace);

  static void d(final Object message) => l.d(message);

  /// How much digits there should be in the time
  static const int timeLength = 2;

  /// Log options for the [L] library
  static const LogOptions _logOptions = LogOptions(
    printColors: false,
    messageFormatting: _formatLoggerMessage,
  );

  /// Formats the time to have [timeLength] digits
  static String timeFormat(final int input) =>
      input.toString().padLeft(timeLength, '0');

  /// Formats the message for the [L] library
  static String _formatLoggerMessage(
    final Object message,
    final LogLevel logLevel,
    final DateTime now,
  ) =>
      '${logLevel.emoji} $now | $message';

  /// Formats the error message for the [L] library
  ///
  /// If [stackTrace] is null then we get the stack trace from the
  /// [StackTrace.current].
  ///
  /// Builds error through [StringBuffer] and returns it.
  static String _formatError(
    final String type,
    final String error,
    final StackTrace? stackTrace,
  ) {
    final StackTrace trace = stackTrace ?? StackTrace.current;

    final StringBuffer buffer = StringBuffer(type)
      ..write(' error: ')
      ..writeln(error)
      ..writeln('Stack trace:')
      ..write(Trace.from(trace).terse);

    return buffer.toString();
  }

  /// Helper static method to log a zone error
  ///
  /// later, it would be send to the sentry
  static void logZoneError(
    final Object? e,
    final StackTrace s,
  ) =>
      l.e(_formatError('Top-level', e.toString(), s), s);

  /// Helper static method to log a flutter error [FlutterError.onError]
  /// like widget overflow, etc.
  static void logFlutterError(
    final FlutterErrorDetails details,
  ) =>
      l.e(
        _formatError('Flutter', details.exceptionAsString(), details.stack),
        details.stack,
      );

  /// Helper static method to log a platform dispatcher error
  /// like native code errors
  static bool logPlatformDispatcherError(
    final Object exception,
    final StackTrace stackTrace,
  ) {
    l.e(
      _formatError('PlatformDispatcher', exception.toString(), stackTrace),
      stackTrace,
    );
    return true;
  }

  /// run in a zone
  static T runLogging<T>(final T Function() body) =>
      l.capture(body, _logOptions);
}
