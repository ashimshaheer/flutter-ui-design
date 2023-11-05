import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/app/controller/bottom_navigation_controll.dart';

class BttomNavigation extends StatefulWidget {
  const BttomNavigation({super.key});

  @override
  State<BttomNavigation> createState() => _BttomNavigationState();
}

class _BttomNavigationState extends State<BttomNavigation> {
  final NavigationButtonControll navicontroller =
      Get.put(NavigationButtonControll());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
          () => navicontroller.tabs[navicontroller.currentindex.value],
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: navicontroller.currentindex.value,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: 'category',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'order',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_box_outlined),
                label: 'payment',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.high_quality),
                label: 'ducan',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.info),
                label: 'info',
              ),
            ],
            onTap: (value) {
              navicontroller.navigationFunction(value);
            },
          ),
        ));
  }
}
