import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/login_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();

    return BlocProvider(
      create: (_) => LoginBloc(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Login Exitoso")),
            );
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: "Email")),
              TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(labelText: "Password"),
                  obscureText: true),
              if (state is LoginLoading) const CircularProgressIndicator(),
              ElevatedButton(
                onPressed: () {
                  context.read<LoginBloc>().add(
                        LoginSubmitted(
                            _emailController.text, _passwordController.text),
                      );
                },
                child: const Text("Login"),
              ),
            ],
          );
        },
      ),
    );
  }
}
