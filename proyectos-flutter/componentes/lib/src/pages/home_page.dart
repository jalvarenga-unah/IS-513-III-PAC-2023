import 'package:componentes/src/router/my_routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      drawer: Drawer(
        // width: double.infinity,
        // backgroundColor: Colors.blue[50],
        child: ListView(
          children: [
            DrawerHeader(
              // padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.blue[100],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/logo.jpg'),
                    radius: 50,
                  ),
                  Text(
                    'Drawer Header',
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              trailing: const Icon(Icons.arrow_forward_ios),
              title: const Text('Login'),
              onTap: () {
                Navigator.pop(context); //cierro el drawer

                //navego a la ruta
                Navigator.pushNamed(
                  context,
                  Routes.login.name,
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.image),
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text('Imagenes'),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  Routes.images.name,
                );
              },
            ),
          ],
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // envía el widget a el inciio del stack de pantallas

                // *  Navigator.of(context).pushNamed('/login');
                Navigator.pushNamed(
                  context,
                  Routes.login.name,
                );

                // ? Hacer push y borrar la pantalla anterior
                // Navigator.of(context).pushReplacementNamed( '/login');
                // Navigator.pushReplacementNamed(context, '/login');
              },
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  Routes.images.name,
                );
              },
              child: Text('Imagenes'),
            ),
            OutlinedButton(
              onPressed: () => Navigator.pushNamed(
                context,
                Routes.listas.name,
              ),
              child: Text('Listas'),
            ),
            OutlinedButton(
              onPressed: () => Navigator.pushNamed(
                context,
                Routes.peticiones.name,
              ),
              child: Text('Peticiones http'),
            ),
            // IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
