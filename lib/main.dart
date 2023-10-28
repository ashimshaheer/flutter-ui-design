import 'package:flutter/material.dart';
import 'package:loginapp/login.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loginscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
