String crearMascota(String nombre, String raza) {
  return 'Creando a la mascota $nombre de raza $raza';
}

//Null-Safety
//los parametros con nombre, por defecto son opcionares
String crearMascotaMejorada({
  required String nombre,
  String? raza,
}) {
  return 'Creando a la mascota $nombre de raza $raza';
}

double calcularArea(int base, int altura) {
  final resultado = base * altura / 2;
  return resultado;
}

double calcularAreaTriangulo(int base, int altura) => base * altura / 2;

void main() {
//   saludo();
//   print(saludo());

  final resultado = crearMascota('Apolo', 'Terrier');
  final resultado2 = crearMascota('Pequinés', 'Polar');

  final resultado3 = crearMascotaMejorada(
    nombre: 'Polar',
  );

  print(resultado);
  print(resultado2);
  print(resultado3);
}

dynamic saludo() {
  print('Hola mundo'); //salida
  return [1, 2, 3, 'Hola'];
}
