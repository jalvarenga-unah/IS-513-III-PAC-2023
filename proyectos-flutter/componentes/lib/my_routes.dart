// * class enum

import 'package:componentes/home_page.dart';
import 'package:componentes/images_page.dart';
import 'package:componentes/listas_page.dart';
import 'package:componentes/login_page.dart';
import 'package:flutter/material.dart';

//enumarate
enum Routes { home, login, images, listas }

class MyRoutes {
  static final routes = {
    Routes.home.name: (BuildContext context) => const HomePage(),
    Routes.login.name: (BuildContext context) => LoginPage(),
    Routes.images.name: (BuildContext context) => const ImagesPage(),
    Routes.listas.name: (BuildContext context) => ListasPage(),
  };
}
