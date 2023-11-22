import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Inferiro'),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.add),
        //   ),
        //   IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.delete),
        //   ),
        // ],
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
      // endDrawer: Drawer(),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (index) {
          print(index);
        },
        items: const [
          BottomNavigationBarItem(
            // backgroundColor: Colors.red,
            icon: Icon(
              Icons.home,
            ),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configuración',
          ),
        ],
      ),
    );
  }
}
