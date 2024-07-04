import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/bloc/data_bloc.codegen.dart';

extension BlocScope on BuildContext {
  DataBloc get dataBloc => read<DataBloc>();
}

extension StringX on String {
  // String get capitalized => '${this[0].toUpperCase()}${substring(1)}';

  String get capitalized => split('\n').map((final line) {
        if (line.isEmpty) {
          return line;
        }
        return '${line[0].toUpperCase()}${line.substring(1)}';
      }).join('\n');
}
