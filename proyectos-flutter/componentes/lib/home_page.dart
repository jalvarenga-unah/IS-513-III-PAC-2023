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
              ElevatedButton(onPressed: () {}, child: Text('Login')),
              TextButton(onPressed: () {}, child: Text('Imagenes')),
              OutlinedButton(onPressed: () {}, child: Text('Listas')),
              // IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            ],
          ),
        ));
  }
}
