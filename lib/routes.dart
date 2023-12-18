import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:testapp/app/all_users_screen.dart';
import 'package:testapp/app/home_screen.dart';
import 'package:testapp/app/profile_screen.dart';

final routes = RouteMap(routes: {
  '/': (_) => const MaterialPage(
        child: HomeScreen(),
      ),
  '/profile': (_) => const MaterialPage(child: ProfileScreen()),
  '/all-users': (_) => const MaterialPage(child: AllUsersScreen()),
});
