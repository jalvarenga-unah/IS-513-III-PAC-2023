import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mi primer app",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Mi primer app',
            style: TextStyle(
              color: Colors.purple[50],
              fontSize: 25,
              fontWeight: FontWeight.w300,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.purple,
          elevation: 0.0,
          // backgroundColor: const Color(0xff512DA8),
        ),
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Hola mundo',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  // contador.toString(),
                  '$contador',
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ),
        //propiedad para cmabiar la posicion del boton
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(
          onPressed: incrementCounter,
          tooltip: 'Incrementar en 1',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  void incrementCounter() {
    //metodo para actualizar el estado de la app
    // solo se puede llamar desde un State
    //no es necesario que tenga codigo dentro del bloque de llaves
    setState(() {});
    contador++;
  }
}
