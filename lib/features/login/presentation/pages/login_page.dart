import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const LoginForm(),
          TextButton(
            onPressed: () => context.push('/login/reset-password'),
            child: const Text("Olvidé mi contraseña"),
          ),
          TextButton(
            onPressed: () => context.push('/login/register'),
            child: const Text("Registrarse"),
          ),
        ],
      ),
    );
  }
}
