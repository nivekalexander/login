import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Restablecer Contraseña")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Ingrese su correo para restablecer la contraseña."),
            ElevatedButton(
              onPressed: () {
                // Lógica para enviar email de recuperación
              },
              child: const Text("Enviar"),
            ),
          ],
        ),
      ),
    );
  }
}
