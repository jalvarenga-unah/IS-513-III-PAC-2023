import 'package:componentes/src/providers/producto.dart';
import 'package:flutter/material.dart';

class PeticionesPage extends StatelessWidget {
  PeticionesPage({super.key});

  final _provider = ProductoProvider();
  @override
  Widget build(BuildContext context) {
    final productos = _provider.getProductos();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Peticiones'),
      ),
      body: Center(child: Text('PeticionesPage')),
    );
  }
}
