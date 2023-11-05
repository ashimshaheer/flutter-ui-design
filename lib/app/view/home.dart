import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/app/utils/constant.dart';
import 'package:loginapp/app/controller/home_controll.dart';

// ignore: camel_case_types

// ignore: camel_case_types
class ManageStoreScreen extends StatelessWidget {
  ManageStoreScreen({super.key});

  final HomeController controler = Get.put(HomeController());
  final Constans constans = Constans();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constans.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Manage store'),
          actions: [
            IconButton(
              onPressed: () {
                controler.signOut(context);
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
                        color: Constans.grey.shade100,
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
                                    ? Constans.amber
                                    : index == 1
                                        ? Constans.green
                                        : index == 2
                                            ? Constans.yellowaccent
                                            : index == 3
                                                ? Constans.tealshade
                                                : index == 4
                                                    ? Constans.grey
                                                    : index == 5
                                                        ? Constans.purple
                                                        : index == 6
                                                            ? Constans
                                                                .purpleshade
                                                            : Constans.amber),
                            height: 40,
                            width: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(controler.imagesOfHome[index],
                                  color: Constans.white),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                          child: Text(
                            controler.descOfHome[index],
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
