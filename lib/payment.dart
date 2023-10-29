import 'package:flutter/material.dart';

class paymentscreen extends StatelessWidget {
  const paymentscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
        centerTitle: true,
        title: Text("payment"),
      )),
    );
  }
}
