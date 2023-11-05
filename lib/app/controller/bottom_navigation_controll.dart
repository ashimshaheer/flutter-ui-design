import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/app/view/catelog.dart';
import 'package:loginapp/app/view/dukan.dart';
import 'package:loginapp/app/view/home.dart';
import 'package:loginapp/app/view/info.dart';
import 'package:loginapp/app/view/order.dart';
import 'package:loginapp/app/view/payment.dart';

class NavigationButtonControll extends GetxController {
  RxInt currentindex = 0.obs;

  List<Widget> tabs = [
    ManageStoreScreen(),
    const CategoryScreen(),
    OrderScreen(),
    paymentscreen(),
    DuckaanScreen(),
    InfoScreen(),
  ];

  void navigationFunction(value) {
    currentindex.value = value;
    update();
  }
}
