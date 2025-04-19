import 'package:daelimflutter/aoo_router/app_route.dart';
import 'package:daelimflutter/presentation/result/result_screen.dart';
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
    GoRoute(
      path: AppRoute.result.toPath,
      name: AppRoute.result.name,
      builder: (context, state) {
        final bmi = state.uri.queryParameters['bmi'];

        //가져올 값값
        return ResultScreen(bmi: double.parse(bmi!));
      },
    ),
  ],
);
