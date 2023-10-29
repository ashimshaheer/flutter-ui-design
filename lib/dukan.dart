import 'package:flutter/material.dart';

class ducanscreen extends StatelessWidget {
  const ducanscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Ducan primium"),
      ),
    ));
  }
}
