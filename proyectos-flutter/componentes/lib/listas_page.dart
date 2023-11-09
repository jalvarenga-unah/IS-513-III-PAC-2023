import 'package:flutter/material.dart';

class ListasPage extends StatelessWidget {
  ListasPage({super.key});

  final List<String> postres = [
    'Helado',
    'Torta',
    'Galletas',
    'Cupcakes',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(postres[0]),
            subtitle: Text('Subtitulo'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            title: Text(postres[1]),
            subtitle: Text('Subtitulo'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            title: Text(postres[2]),
            subtitle: Text('Subtitulo'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.keyboard_arrow_right),
          )
        ],
      ),
    );
  }

  List<Widget> _crearItem(List<String> postres) {
    return postres
        .map((postre) => ListTile(
              title: Text(postre),
              subtitle: Text('Subtitulo'),
              leading: Icon(Icons.ac_unit),
              trailing: Icon(Icons.keyboard_arrow_right),
            ))
        .toList();
  }
}
