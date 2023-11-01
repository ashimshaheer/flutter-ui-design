import 'package:flutter/material.dart';
import 'package:loginapp/bottomnavigation.dart';
import 'package:loginapp/login.dart';

// ignore: camel_case_types

class managestore extends StatelessWidget {
  managestore({super.key});
  List images = [
    'assets/speaker.png',
    'assets/payment.png',
    'assets/discount.png',
    'assets/person.png',
    'assets/qr-code.png',
    'assets/indian.png',
    'assets/bars-sort.png',
  ];
  List desc = [
    'marketing designs',
    'online payments',
    'Dicount Coupons',
    'My customers',
    'share QR code',
    'Extra charges',
    'Order Form',
  ];

  get child => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 230, 228, 223),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Manage store'),
          actions: [
            IconButton(
              onPressed: () {
                signout(context);
              },
              icon: const Icon(Icons.exit_to_app),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
              itemCount: 7,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
              itemBuilder: (BuildContext context, index) {
                return Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    height: 30,
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: index == 0
                                    ? const Color.fromARGB(255, 208, 111, 15)
                                    : index == 1
                                        ? Colors.green
                                        : index == 2
                                            ? const Color.fromARGB(
                                                255, 223, 166, 10)
                                            : index == 3
                                                ? const Color.fromARGB(
                                                    255, 4, 86, 100)
                                                : index == 4
                                                    ? Colors.grey[700]
                                                    : index == 5
                                                        ? Colors.purple[900]
                                                        : index == 6
                                                            ? Colors.purple
                                                            : Colors.amber),
                            height: 40,
                            width: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(images[index],
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                          child: Text(
                            desc[index],
                            style: const TextStyle(
                                fontSize: 23, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ));
              }),
        ),
      ),
    );
  }
}

signout(BuildContext context) {
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => loginscreen()), (route) => false);
}
