void main() {
  //instanciar la clase, no requiere "new"
  final batman = Heroe('Batman', 'El dinero');
//   batman._ciudad = 'Gotica'; // No es válido

  // uso del setter como "propiedad"
//   batman.ciudad = 'Gotica';

  print(batman.nombre);
  print(batman.poder);
  // es la ejecución de un método
  print(batman.ciudad);
}

class Heroe {
  //propiedades
  final String nombre;
  final String poder;

  //propieades privadas inician con "_"
  String _ciudad = 'No definido';

  //constructor
  Heroe(this.nombre, this.poder);

//   Heroe(String nombre, String poder){

//     this.nombre = nombre;
//     this.poder = poder;

//   }

  //comportamientos

  //getter
//   String getCiudad() => this._ciudad;
  String get ciudad => this._ciudad;

  //setter
//   void setCiudad(String valor)
//     => this._ciudad = valor;

  set ciudad(String valor) => this._ciudad = valor;
}
