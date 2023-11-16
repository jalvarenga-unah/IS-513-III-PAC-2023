import 'package:componentes/src/router/my_routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        useMaterial3: true, //habilita el nuevo diseño de material
        primarySwatch: Colors.green,
      ),
      // home: const HomePage(),
      initialRoute: Routes.home.name,
      routes: MyRoutes.routes,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => Scaffold(
            appBar: AppBar(),
            body: Text('La ruta ${settings.name} no existe'),
          ),
        );
      },
    );
  }
}
