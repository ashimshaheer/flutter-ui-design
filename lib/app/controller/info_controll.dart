import 'package:get/get.dart';

class InfoToggleSwich extends GetxController {
  RxBool light = true.obs;

  void toggleSwichFunction(index) {
    if (light.value == true) {
      light.value = false;
    } else {
      light.value = true;
    }

    update();
  }
}
