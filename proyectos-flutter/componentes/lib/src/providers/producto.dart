import 'package:componentes/src/models/producto.dart';
import 'package:http/http.dart' as http;

class ProductoProvider {
  List<Producto> getProductos() {
    // final url = Uri.parse('https://fakestoreapi.com/products');
    final url = Uri(
      scheme: 'https',
      host: 'fakestoreapi.com',
      path: 'products',
    );

    http.get(url).then((res) {
      if (res.statusCode != 200) {
        throw Exception('Error al obtener los productos');
      }

      // convertir el body a un json y luego una lista de Producto
      String body = res.body;
      print(body);
    }).catchError((error) {
      throw Exception('Error al obtener los productos');
    });

    return [];
  }
}
