import 'package:componentes/src/models/producto.dart';
import 'package:http/http.dart' as http; // alias

class ProductoProvider {
  List<Producto> getProductos() {
    // final url = Uri.parse('https://fakestoreapi.com/products');
    final url = Uri(
      scheme: 'https',
      host: 'fakestoreapi.com',
      path: 'products',
    );

    final response = http.get(url); // Future

    // Asincrono
    response.then((res) {
      if (res.statusCode != 200) {
        // generar una excepcion
        throw Exception('Error al obtener los productos');
      }

      // convertir a json -> trandformarlo a una lista de productos
      String datos = res.body;
    }).catchError((error) {
      print(error);
    });

    print(response);

    return [];
  }
}
