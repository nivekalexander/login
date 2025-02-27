import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/bloc/auth_data_bloc.dart';
import 'core/services/login_service.dart';
import 'package:login/router/login_router.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(LoginService()),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: loginRouter,
      ),
    );
  }
}
