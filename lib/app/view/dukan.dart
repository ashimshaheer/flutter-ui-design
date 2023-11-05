import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/app/utils/constant.dart';
import 'package:loginapp/app/controller/dukaan_cantroller.dart';

// ignore: must_be_immutable
class DuckaanScreen extends StatelessWidget {
  DuckaanScreen({super.key});
  final Constans constans = Constans();
  final DukaanController controler = Get.put(DukaanController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Stack(children: [
                    Positioned(
                      top: 0,
                      child: Container(
                        color: Constans.blue,
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25, left: 12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.arrow_back,
                                color: Constans.white,
                              ),
                              Constans().sbHt70,
                              const Text(
                                'Dukaan Premium',
                                style: TextStyle(
                                    color: Constans.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 200,
                      child: Container(
                        color: Constans.white,
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                      ),
                    ),
                    Positioned(
                      left: 17,
                      top: 70,
                      child: Container(
                        width: 320,
                        height: 200,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 1,
                            )
                          ],
                          color: Constans.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 22, left: 50),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Constans.blue,
                                    ),
                                    child: const Icon(
                                      Icons.shopping_bag,
                                      size: 40,
                                      color: Constans.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 140,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(top: 22, right: 30),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          'dukaan',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 30),
                                        ),
                                        Text(
                                          'PREMIUM',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Constans.blue,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Constans().sbHt10,
                            Constans().sbHt5,
                            Column(
                              children: [
                                const Text(
                                  'Get Dukaan Premium for just ',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                Constans().sbHt5,
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.currency_rupee),
                                    Text('4,999/year',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                                Constans().sbHt10,
                                const Text(
                                  'All the advanced features for scaling your ',
                                  style: TextStyle(color: Constans.grey),
                                ),
                                const Text('business',
                                    style: TextStyle(color: Constans.grey))
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 10),
                  child: Text(
                    'features',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controler.iconlistOfDukaan.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border:
                                  Border.all(width: 2, color: Constans.blue)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 5, right: 5, top: 5, bottom: 5),
                            child: Icon(
                              controler.iconlistOfDukaan[index],
                              color: Constans.blue,
                              size: 40,
                            ),
                          )),
                      title: Text(
                        controler.featuresOfDukaan[index],
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(controler.subjectOfDukaan[index]),
                    );
                  },
                ),
                const Divider(
                  color: Constans.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('what is Dukaan Premium?',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                      Constans().sbHt10,
                      Container(
                        width: 320,
                        height: 20,
                        color: Constans.tealshade,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
