import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'features/login/presentation/pages/login_page.dart';
import 'features/login/presentation/pages/reset_password_page.dart';
import 'features/login/presentation/pages/register_page.dart';

final GoRouter loginRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
      routes: [
        GoRoute(
          path: 'reset-password',
          builder: (context, state) => const ResetPasswordPage(),
        ),
        GoRoute(
          path: 'register',
          builder: (context, state) => const RegisterPage(),
        ),
      ],
    ),
  ],
);
