import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/app/view/login.dart';

class HomeController extends RxController {
  List imagesOfHome = [
    'assets/images/speaker.png',
    'assets/images/payment.png',
    'assets/images/discount.png',
    'assets/images/person.png',
    'assets/images/qr-code.png',
    'assets/images/indian.png',
    'assets/images/bars-sort.png',
  ];
  List descOfHome = [
    'marketing designs',
    'online payments',
    'Dicount Coupons',
    'My customers',
    'share QR code',
    'Extra charges',
    'Order Form',
  ];

  signOut(BuildContext context) {
    Get.offAll(LoginScreen());
  }
}
