void main(){
  
  print("Hola mundo");
  
  // esto no tiene efecrto en la compilacion
  
  //declaración de variables primitivas
  int edad = 29;
  dynamic nombre = 'Juan Alvarenga';
  //nombre = 30;
  double conDecimales = 10.0;
  bool esMayor = true;
  
  
  //constantes
  
  //"const", se debe inicializar la varibale en su declaración
  const clase = "Lenguajes de Programación";
  
  //"final", permite declarar la variable sin inicializar
  final String nombreMascota;
  
  // y se puede asignar el valor despues
  nombreMascota = 'Apolo';
  //pero luego, no puede cambiar
//   nombreMascota = 'Polar';
  
  print('Mi nombre es ' + nombre);
  
//   print('tengo '+edad.toString()+' años');
//   print(edad.runtimeType); // retorna el tipo de dato
  print('tengo $edad años');
  
  print(clase);
  print(nombreMascota);
  
}