import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/bloc/users_bloc.codegen.dart';

extension BlocScope on BuildContext {
    UsersBloc get usersBloc => read<UsersBloc>();
}
