import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:mobileflutter_1/routes/routes.dart';

class NavController extends GetxController {
  final currentIndex = 0.obs;

  void setIndex(int i) => currentIndex.value = i;

  void onTap(int i) {
    if (i == currentIndex.value) return;
    currentIndex.value = i;
    switch (i) {
      case 0:
        Get.offNamed(Routes.calculator);
        break;
      case 1:
        Get.offNamed(Routes.footballplayers);
        break;
      case 2:
        Get.offNamed(Routes.profile);
        break;
    }
  }
}
