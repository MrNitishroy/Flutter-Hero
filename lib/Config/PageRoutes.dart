import 'package:flutter/material.dart';
import 'package:flutterhero/Page/About/AboutUs.dart';
import 'package:flutterhero/Page/AppBar/AppBarPage.dart';
import 'package:go_router/go_router.dart';

import '../Page/HomePage/HomePage.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: '/about',
      builder: (BuildContext context, GoRouterState state) {
        return const AboutUs();
      },
    ),
    GoRoute(
      path: '/appbar',
      builder: (BuildContext context, GoRouterState state) {
        return const AppBarPage();
      },
    ),
  ],
);
