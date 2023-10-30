import 'package:componentes/custom_input.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const FlutterLogo(
                size: 140,
              ),
              const SizedBox(height: 40),
              CustomInput(
                controller: _emailController,
                hintText: 'Ingrese su correo',
                icon: Icons.email,
              ),
              const SizedBox(height: 20),

              CustomInput(
                controller: _passwordController,
                hintText: 'Ingrese su contraseña',
                icon: Icons.lock,
                obscure: true,
              ),

              // TextField(
              //   controller: _passwordController,
              //   keyboardType: TextInputType.visiblePassword,
              //   obscureText: true,
              //   decoration: InputDecoration(
              //     hintText: 'Ingrese su contraseña',
              //     prefixIcon: const Icon(Icons.lock),
              //     suffixIcon: const Icon(Icons.visibility),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(20),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text('Recuerdame'),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Ovidé mi contraseña'))
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Iniciar sesión'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('¿No tienes una cuenta?'),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Registrate'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
