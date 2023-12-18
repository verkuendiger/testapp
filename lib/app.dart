import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:routemaster/routemaster.dart';
import 'package:testapp/bloc/users_bloc.codegen.dart';
import 'package:testapp/runner/dependencies_scope.dart';

import 'routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'TestApp',
        theme: ThemeData(scaffoldBackgroundColor: const Color(0xfff4f6f6)),
        routerDelegate: RoutemasterDelegate(routesBuilder: (context) => routes),
        routeInformationParser: const RoutemasterParser(),
        builder: (context, child) => MultiProvider(
          providers: [
            BlocProvider(
              create: (context) => UsersBloc(
                usersRepository: DependenciesScope.of(context).usersRepository,
              ),
            ),
          ],
          child: child,
        ),
      );
}
