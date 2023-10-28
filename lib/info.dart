import 'package:flutter/material.dart';

class infoscreen extends StatelessWidget {
  const infoscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('additional information'),
      ),
    ));
  }
}
