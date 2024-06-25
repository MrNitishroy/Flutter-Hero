import 'package:flutter/material.dart';
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
  ],
);
