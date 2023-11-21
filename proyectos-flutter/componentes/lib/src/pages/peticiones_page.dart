import 'package:card_swiper/card_swiper.dart';
import 'package:componentes/src/models/producto.dart';
import 'package:componentes/src/providers/producto.dart';
import 'package:flutter/material.dart';

class PeticionesPage extends StatelessWidget {
  PeticionesPage({super.key});

  final _provider = ProductoProvider();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peticiones'),
      ),
      body: FutureBuilder(
        future: _provider.getProductos(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Producto>> snapshot) {
          if (snapshot.hasError) {
            return ErrorWidget(message: snapshot.error.toString());
          }

          if (snapshot.hasData) {
            // obtener el listado de productos
            final productos =
                snapshot.data!; // Establece que la lista no es nula

            // retornar el widget con la lista de productos
            return ListView.builder(
              itemCount: productos.length,
              itemBuilder: (BuildContext context, int index) {
                return ItemProducto(producto: productos[index]);
              },
            );
          }
          // ? Importante: el widget "Swiper" requiere la instalacion de la dependencia "card_swiper"
          //   Swiper(
          //     itemBuilder: (BuildContext context, int index) {
          //       return Image.network(
          //         productos[index].image,
          //         width: 100,
          //         fit: BoxFit.cover,
          //       );
          //     },
          //     itemCount: productos.length,
          //     pagination: SwiperPagination(),
          //     control: SwiperControl(),
          //   );
          // }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.error, size: 150, color: Colors.red),
          Text(
            message,
            style: TextStyle(fontSize: 28),
          ),
        ],
      ),
    );
  }
}

class ItemProducto extends StatelessWidget {
  const ItemProducto({
    super.key,
    required this.producto,
  });

  final Producto producto;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: NetworkImage(producto.image),
              width: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Text(producto.title),
            const SizedBox(height: 10),
            Text(producto.description),
          ],
        ),
      ),
    );
  }
}
