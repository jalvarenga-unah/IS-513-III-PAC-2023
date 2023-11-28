import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:menu_inferior/home_controller.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });

  // final HomeController _controller = HomeController();
  // Inyección de dependencia del controlador
  final HomeController _controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final pageController =
        PageController(initialPage: _controller.currentIndex);
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
      body: PageView(
          onPageChanged: (index) {
            _controller.currentIndex = index;
          },
          controller: pageController,
          children: [
            Container(
              color: Colors.red,
              child: const Center(
                child: Text(
                  'Inicio',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Configuración',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ]),
      // endDrawer: Drawer(),
      // drawer: Drawer(),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: _controller.currentIndex,
            onTap: (index) {
              _controller.currentIndex = index;

              //Simular la navegación
              pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn);
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
          )),
    );
  }
}
