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
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(
          indent: 20,
          endIndent: 20,
        ),
        itemCount: postres.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(postres[index]),
            subtitle: Text('Subtitulo'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          );
        },
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
