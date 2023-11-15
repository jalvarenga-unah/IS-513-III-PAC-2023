// * class enum

import 'package:componentes/src/pages/peticiones_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/images_page.dart';
import 'package:componentes/src/pages/listas_page.dart';
import 'package:componentes/src/pages/login_page.dart';
import 'package:flutter/material.dart';

//enumarate
enum Routes { home, login, images, listas, peticiones }

class MyRoutes {
  static final routes = {
    Routes.home.name: (BuildContext context) => const HomePage(),
    Routes.login.name: (BuildContext context) => LoginPage(),
    Routes.images.name: (BuildContext context) => const ImagesPage(),
    Routes.listas.name: (BuildContext context) => ListasPage(),
    Routes.peticiones.name: (BuildContext context) => PeticionesPage(),
  };
}
