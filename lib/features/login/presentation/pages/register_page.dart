import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registro")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Registro de Usuario"),
            ElevatedButton(
              onPressed: () {
                // Lógica de registro aquí
              },
              child: const Text("Registrarse"),
            ),
          ],
        ),
      ),
    );
  }
}
