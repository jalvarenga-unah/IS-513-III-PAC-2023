import 'package:get/get.dart';

class HomeController extends GetxController {
  final _currentIndex = 0.obs; // Transforma en observable

  //getters y setters
  int get currentIndex => _currentIndex.value;
  set currentIndex(int value) => _currentIndex.value = value;
}
