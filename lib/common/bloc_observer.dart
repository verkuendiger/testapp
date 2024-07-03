import 'package:flutter_bloc/flutter_bloc.dart';

import 'loggeride.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onCreate(
    BlocBase<Object?> bloc,
  ) {
    final StringBuffer stringBuffer = StringBuffer()
      ..writeln('\n')
      ..writeln('Bloc On Create: ${bloc.runtimeType}');

    L.i(stringBuffer.toString());

    super.onCreate(bloc);
  }

  @override
  void onEvent(
    Bloc<Object?, Object?> bloc,
    Object? event,
  ) {
    final StringBuffer stringBuffer = StringBuffer()
      ..writeln('\n')
      ..writeln('Bloc On Event: ${bloc.runtimeType}')
      ..writeln('Event: ${event.runtimeType}');
    L.i(stringBuffer.toString());

    super.onEvent(bloc, event);
  }

  @override
  void onChange(
    BlocBase<Object?> bloc,
    Change<dynamic> change,
  ) {
    final StringBuffer stringBuffer = StringBuffer()
      ..writeln('\n')
      ..writeln('Bloc On Change: ${bloc.runtimeType}')
      ..writeln(
          'Change: ${change.currentState.runtimeType} > ${change.nextState.runtimeType}');
    L.i(stringBuffer.toString());

    super.onChange(bloc, change);
  }

  @override
  void onTransition(
    Bloc<Object?, Object?> bloc,
    Transition<Object?, Object?> transition,
  ) {
    final StringBuffer stringBuffer = StringBuffer()
      ..writeln('\n')
      ..writeln('Bloc On Transition: ${bloc.runtimeType}')
      ..writeln('Event: ${transition.event.runtimeType}')
      ..writeln(
          'State: ${transition.currentState.runtimeType} > ${transition.nextState.runtimeType}')
      ..writeln('New State: ${transition.nextState}');
    L.i(stringBuffer.toString());

    super.onTransition(bloc, transition);
  }

  @override
  void onError(
    BlocBase<Object?> bloc,
    Object error,
    StackTrace stackTrace,
  ) {
    final StringBuffer stringBuffer = StringBuffer()
      ..writeln('\n')
      ..writeln('Bloc On Error: ${bloc.runtimeType}')
      ..writeln('Error: ${error.runtimeType}')
      ..writeln('StackTrace: ${stackTrace}');
    L.e(stringBuffer.toString());

    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(
    BlocBase<Object?> bloc,
  ) {
    final StringBuffer stringBuffer = StringBuffer()
      ..writeln('\n')
      ..writeln('Bloc On Close: ${bloc.runtimeType}');
    L.i(stringBuffer.toString());

    super.onClose(bloc);
  }
}
