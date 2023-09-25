void main() {
  //Mapas o Diccionarios

  // "crear un objeto de mascota"
  final Map<String, dynamic> mascota = {
    'nombre': 'Apolo',
    'raza': 'Terrier',
    'edad': 2,
    'estaVacunado': true,
    'comidasFavoritas': ['pollito', 'sandia', 'hielo']
//     2:{},
//     true:false,
//     'nombre':'' //no se puede repetir claves
  };

  //podemos agregar mas propiedades al Map
  mascota['apodo'] = "Apolito";

  //obtiene todas las entradas del obejto
  print(mascota.entries);

  //obtiene las llaves del objeto
  print(mascota.keys);

  print(mascota['nombre']);
  print(mascota['raza']);
  print(mascota[2]); //null

  //listas
  final List<String> colores = ['azul', 'rojo', 'verde'];

//   print(colores);

  colores.add('morado');
  colores.removeAt(0);
  colores.add('amarillo');

//   print(colores);
//   print(colores.length);

//   print(colores[1]);
}
