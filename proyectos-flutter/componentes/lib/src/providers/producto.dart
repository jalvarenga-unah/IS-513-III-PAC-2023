import 'dart:convert';

import 'package:componentes/src/models/producto.dart';
import 'package:http/http.dart' as http;

class ProductoProvider {
  // List<Producto> getProductos() {
  //   // final url = Uri.parse('https://fakestoreapi.com/products');
  //   final url = Uri(
  //     scheme: 'https',
  //     host: 'fakestoreapi.com',
  //     path: 'products',
  //   );

  //   http.get(url).then((res) {
  //     if (res.statusCode != 200) {
  //       throw Exception('Error al obtener los productos');
  //     }

  //     // convertir el body a un json y luego una lista de Producto
  //     String body = res.body;

  //     // return [
  //     //   Producto(
  //     //       id: 1,
  //     //       title: '',
  //     //       price: 12,
  //     //       description: '',
  //     //       category: '',
  //     //       image: '')
  //     // ];
  //   }).catchError((error) {
  //     throw Exception('Error al obtener los productos');
  //   });

  //   return [];
  // }

// las funciones "async" siempre retornan un Future
  Future<List<Producto>> getProductos() async {
    // final url = Uri.parse('https://fakestoreapi.com/products');
    final url = Uri(
      scheme: 'https',
      host: 'fakestoreapi.com',
      path: 'products',
    );

    final res = await http.get(url);

    final String body = res.body;

    final bodyJson = json.decode(body);

    final productos = List<Producto>.from(
      //? recorro el json y transformo cada elemento en un "Producto"
      bodyJson.map((producto) {
        //? convierto el json en un Producto
        final Producto newProduct = Producto.fromJson(producto);

        return newProduct; // retornando el valor
      }), //? devuelve un Iterable, de Productos
    );

    return productos;
  }
}
