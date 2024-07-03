import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:testapp/bloc/data_bloc.codegen.dart';
import 'package:testapp/app/home_screen.dart';

import 'package:testapp/runner/dependencies_scope.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TestApp',
        scrollBehavior:
            ScrollConfiguration.of(context).copyWith(scrollbars: false),
        theme: ThemeData(scaffoldBackgroundColor: const Color(0xfff4f6f6)),
        home: HomeScreen(),
        builder: (context, child) => MultiProvider(
          providers: [
            BlocProvider(
              create: (context) => DataBloc(
                dataRepository: DependenciesScope.of(context).dataRepository,
              )..add(FetchPosts()),
            ),
          ],
          child: child,
        ),
      );
}
