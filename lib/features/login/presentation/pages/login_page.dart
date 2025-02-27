import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Simulación de login
            print("Usuario autenticado");
          },
          child: Text("Iniciar Sesión"),
        ),
      ),
    );
  }
}
