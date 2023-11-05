import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/app/view/bottomnavigation.dart';

class LoginControl extends GetxController {
  String username = 'ashimsha222@gmail.com';

  String password = 'ashim';

  RxBool ishidden = true.obs;

  bool isValid = false;

  final usernameController = TextEditingController();

  final userpasswordController = TextEditingController();

  void togglePasswordView() {
    ishidden.value = !ishidden.value;
  }

  void checkLogin(BuildContext context) {
    if (usernameController.text == username &&
        userpasswordController.text == password) {
      Get.offAll(const BttomNavigation());
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: Color.fromARGB(255, 224, 87, 77),
        content: Text("username or password does't match"),
        duration: Duration(seconds: 4),
      ));
    }
  }
}
