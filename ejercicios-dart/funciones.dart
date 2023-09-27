//función para realziar las 4 oepraciones matemáticas básicas
// recibiendo como parametros los dos números a operar
// y el tipo de operación a realizar
double operacionesBasicas(
  double numero1,
  double numero2, {
  String? operacion = '+',
}) {
  double resultado = 0.0;

  switch (operacion) {
    case '=':
      resultado = numero1 + numero2;
      break;
    case '-':
      resultado = numero1 - numero2;
      break;
    case '*':
      resultado = numero1 * numero2;
      break;
    case '/':
      if (numero2 == 0) {
        return 0.0;
      }
      resultado = numero1 / numero2;
      break;
    default:
      resultado = 0.0;
  }

  return resultado;
}

String crearMascota(String nombre, String raza) {
  return 'Creando a la mascota $nombre de raza $raza';
}

//Null-Safety
//los parametros con nombre, por defecto son opcionares
String crearMascotaMejorada(String nombre, {String? raza}) {
  return 'Creando a la mascota $nombre de raza $raza';
}

double calcularArea({int? base, int? altura}) {
  if (base == null || altura == null) {
    return 0.0;
  }

  final resultado = base * altura / 2;
  return resultado;
}

double? calcularAreaTriangulo(int base, int altura) => base * altura / 2;

String validarEdad(int edad) {
  return edad > 18 ? 'Es mayor de edad' : 'Es menor de edad';
}

void main() {
//   saludo();
//   print(saludo());

  final resultado = crearMascota('Apolo', 'Terrier');
  final resultado2 = crearMascota('Pequinés', 'Polar');

  final resultado3 = crearMascotaMejorada('Polar', raza: 'Pequinés');

//   print(resultado);
//   print(resultado2);
  print(resultado3);

  print(calcularArea(base: 2, altura: 5));
}

dynamic saludo() {
  print('Hola mundo'); //salida
  return [1, 2, 3, 'Hola'];
}
