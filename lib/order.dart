import 'package:flutter/material.dart';

class orderscreen extends StatelessWidget {
  const orderscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("order")),
      ),
    );
  }
}
