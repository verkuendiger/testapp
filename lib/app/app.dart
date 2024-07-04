import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:testapp/app/home_screen.dart';
import 'package:testapp/bloc/data_bloc.codegen.dart';
import 'package:testapp/runner/dependencies_scope.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(final BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TestApp',
        scrollBehavior:
            ScrollConfiguration.of(context).copyWith(scrollbars: false),
        theme: ThemeData(scaffoldBackgroundColor: const Color(0xfff4f6f6)),
        home: const HomeScreen(),
        builder: (final context, final child) => MultiProvider(
          providers: [
            BlocProvider(
              create: (final context) => DataBloc(
                dataRepository: DependenciesScope.of(context).dataRepository,
              )..add(const FetchPosts()),
            ),
          ],
          child: child,
        ),
      );
}
