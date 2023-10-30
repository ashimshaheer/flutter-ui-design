import 'package:flutter/material.dart';
import 'package:loginapp/catelog.dart';
import 'package:loginapp/dukan.dart';
import 'package:loginapp/home.dart';
import 'package:loginapp/info.dart';
import 'package:loginapp/order.dart';
import 'package:loginapp/payment.dart';

class bottomnavi extends StatefulWidget {
  const bottomnavi({super.key});

  @override
  State<bottomnavi> createState() => _bottomnaviState();
}

class _bottomnaviState extends State<bottomnavi> {
  int _currentindex = 0;
  List<Widget> tabs = [
    managestore(),
    catelogscreen(),
    orderscreen(),
    paymentscreen(),
    ducanscreen(),
    infoscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
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
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
        ));
  }
}
