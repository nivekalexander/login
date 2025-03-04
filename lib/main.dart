import 'package:flutter/material.dart';
import 'router.dart';

void main() {
  runApp(const LoginMicroApp());
}

class LoginMicroApp extends StatelessWidget {
  const LoginMicroApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: loginRouter,
    );
  }
}
