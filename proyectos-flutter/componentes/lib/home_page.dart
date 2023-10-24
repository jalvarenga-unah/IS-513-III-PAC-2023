import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // envía el widget a el inciio del stack de pantallas

                // *  Navigator.of(context).pushNamed('/login');
                Navigator.pushNamed(context, '/login');

                // ? Hacer push y borrar la pantalla anterior
                // Navigator.of(context).pushReplacementNamed( '/login');
                // Navigator.pushReplacementNamed(context, '/login');
              },
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Imagenes'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Listas'),
            ),
            // IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
