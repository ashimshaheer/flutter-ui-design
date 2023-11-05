import 'package:get/get.dart';

class PayementControl extends GetxController {
  int hasBeenPressed = 0;

  final List titleOfPayment = [
    'Order #1688068',
    'order #6546515',
    'order #6511515',
  ];
  final List subtitileOfPayment = [
    'jul 12,02.08 PM',
    'apr 12,02.08 PM',
    'apr 11,03.08 PM',
  ];

  final List rateOfPayment = [
    '799',
    '3874',
    '686.43',
  ];
  final List titleOneOfPayment = [
    'Order #101010',
    'order #101010',
    'order #101010',
  ];
  final List subtitileOneOfPayment = [
    'jul 12,02.08 PM',
    'apr 13,02.08 PM',
    'apr 17,03.08 PM',
  ];

  final List rateOneOfPayment = [
    '899',
    '4874',
    '586.43',
  ];
  final List titletTwoOfPayment = [
    'Order #1516584',
    'order #65561564',
    'order #6511515',
  ];
  final List subtitileTwoOfPayment = [
    'jul 15,02.08 PM',
    'apr 16,02.08 PM',
    'apr 17,03.08 PM',
  ];

  final List rateTwoOfPayment = [
    '999',
    '1874',
    '100.43',
  ];
  final List imagesOfPayment = [
    'assets/images/pic3.jpg',
    'assets/images/pic2.jpg',
    'assets/images/pic1.jpg',
  ];

  final List imagesOneOfPayment = [
    'assets/images/pic4.jpg',
    'assets/images/pic5.jpg',
    'assets/images/pic1.jpg',
  ];
  final List imagesTwoOfPayment = [
    'assets/images/pic2.jpg',
    'assets/images/pic3.jpg',
    'assets/images/pic4.jpg',
  ];

  buttonFunction(int index) {
    hasBeenPressed = index;
    update();
  }

  // RxInt categoryfuncone() {
  //   return hasBeenPressed = 1.obs;
  // }

  // RxInt categoryfunctwo() {
  //   return hasBeenPressed = 2.obs;
  // }
}
