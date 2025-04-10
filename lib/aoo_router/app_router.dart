import 'package:daelimflutter/aoo_router/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:daelimflutter/presentation/start/start_screen.dart';
import 'package:daelimflutter/presentation/main/main_screen.dart';

final router = GoRouter(
  initialLocation: AppRoute.start.toPath,
  routes: [
    GoRoute(
      path: AppRoute.start.toPath,
      builder: (context, state) => StartScreen(),
    ),
    GoRoute(
      path: AppRoute.main.toPath,
      builder: (context, state) => MainScreen(),
    ),
  ],
);
