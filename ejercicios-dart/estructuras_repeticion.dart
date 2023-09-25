void main() {
//   for (int i = 0; i < 5; i++) {
//     print('hello ${i + 1}');
//   }

  final List<String> colores = ['azul', 'rojo', 'verde'];

//   print(colores.reversed);

//   colores.forEach( (color){
//     print(color);
//   });

//     final copiaColores = colores;

  final copiaColores = colores.map((color) {
    return color;
  }).toList();

  copiaColores.removeLast();

  print('origial: $colores');
  print('copia: $copiaColores');
}
