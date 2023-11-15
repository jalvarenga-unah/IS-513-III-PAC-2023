import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imagenes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // imagen local

            InkWell(
              splashColor: Colors.red,
              onTap: () {},
              child: Image(
                image: AssetImage('assets/images/logo.jpg'),
                // width: 150,
                fit: BoxFit.cover,
              ),
            ),

            GestureDetector(
              onTap: () => print('presiono imagen'),
              child: Image.asset('assets/images/logo.jpg'),
            ),

            //imagen de internet
            const ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image(
                image: NetworkImage(
                    'https://th.bing.com/th/id/R.14732af8c12f63a81fc43b0e875781af?rik=zv4E6W5UvKq7ww&riu=http%3a%2f%2f4.bp.blogspot.com%2f-4cq-eUn8t3A%2fT3nADDmOOMI%2fAAAAAAAABng%2fkSjd_uSAuOo%2fs1600%2ffotos-perros-cachorros.jpg&ehk=ZZCh57TZQP500jH2Wd5YVx9XdkK5DLu0b79jemFqwxQ%3d&risl=&pid=ImgRaw&r=0'),
                width: 300,
                height: 350,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
