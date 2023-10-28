import 'package:flutter/material.dart';
import 'package:loginapp/home.dart';
import 'package:loginapp/info.dart';

class bottomnavi extends StatefulWidget {
  const bottomnavi({super.key});

  @override
  State<bottomnavi> createState() => _bottomnaviState();
}

class _bottomnaviState extends State<bottomnavi> {
  int _currentindex = 0;
  List<Widget> tabs = [
    managestore(),
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
              icon: Icon(Icons.info),
              label: 'info',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined),
              label: 'payment',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined),
              label: 'payment',
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
