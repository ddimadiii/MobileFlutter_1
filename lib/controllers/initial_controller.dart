import 'package:get/get.dart';

class InitialController extends GetxController {
  var currentIndex = 0.obs;
  void changeTab(int index) => currentIndex.value = index;
}
