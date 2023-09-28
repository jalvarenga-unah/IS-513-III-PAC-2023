void main() {
  //instanciar la clase, no requiere "new"
  final batman = Heroe('Batman', 'El dinero');
  batman._ciudad = 'Gotica';

  print(batman.nombre);
  print(batman.poder);
  print(batman._ciudad);
}

class Heroe {
  //propiedades
  final String nombre;
  final String poder;

  //propieades privadas inician con "_"
  String _ciudad = 'Gotham';

  //constructor
  Heroe(this.nombre, this.poder);

//   Heroe(String nombre, String poder){

//     this.nombre = nombre;
//     this.poder = poder;

//   }

  //comportamientos
}
