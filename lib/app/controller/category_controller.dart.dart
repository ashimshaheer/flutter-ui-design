import 'dart:core';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  List imageOfCategory = [
    'assets/images/pic1.jpg',
    'assets/images/pic2.jpg',
    'assets/images/pic3.jpg',
    'assets/images/pic4.jpg',
    'assets/images/pic5.jpg',
  ];

  List titilesOfCategory = [
    'Couch potato | women',
    'Couch potato | men|Bi',
    'Mug | explore',
    'combo plahat 1 | pack',
    'mug | orechard',
  ];

  List cashOfcategory = ['799', '799', '399', '699', '449'];

  final List listOfSwich = <bool>[false, false, false, false, false].obs;

  void switchFunction(int index) {
    listOfSwich[index] = !listOfSwich[index];
    update();
  }
}
