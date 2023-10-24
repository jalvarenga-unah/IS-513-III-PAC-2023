import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // Navigator.pop(context); // Cierra la ultima ruta desplegada

              Navigator.pushReplacementNamed(context, '/home');
            },
            child: Text('Volver')),
      ),
    );
  }
}
