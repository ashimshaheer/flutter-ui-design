import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class catelogscreen extends StatefulWidget {
  const catelogscreen({super.key});

  @override
  State<catelogscreen> createState() => _catelogscreenState();
}

// categorysub category = categorysub();

class _catelogscreenState extends State<catelogscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 2,
          child: SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: const Text("category"),
                bottom: const TabBar(tabs: [
                  Tab(
                    text: 'product',
                  ),
                  Tab(
                    text: 'categories',
                  )
                ]),
              ),
              body: TabBarView(children: [
                Center(
                  child: categorysub(),
                ),
                Center(
                  child: categorysub(),
                )
              ]),
            ),
          )),
    );
  }
}

class categorysub extends StatelessWidget {
  categorysub({super.key});
  final List _imagecate = [
    'assets/pic1.jpg',
    'assets/pic2.jpg',
    'assets/pic3.jpg',
    'assets/pic4.jpg',
    'assets/pic5.jpg',
  ];
  final List _titile = [
    'Couch potato| women',
    'Couch potato| men|Bi',
    'Mug|explore',
    'combo plahat 1|pack',
    'mug|orechard',
  ];
  final List _cash = ['799', '799', '399', '699', '449'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _imagecate.length,
          itemBuilder: (context, index) {
            return Card(
              child: Container(
                // height: 150,
                color: const Color.fromARGB(255, 235, 231, 231),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding:
                                const EdgeInsets.only(bottom: 3.0, left: 15.0),
                            child: Image.asset(
                              _imagecate[index],
                              height: 80,
                              width: 80,
                              alignment: Alignment.topLeft,
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                _titile[index],
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              '1 pease',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.currency_rupee_sharp,
                                  size: 15,
                                ),
                                Text(
                                  _cash[index],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'in stock',
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 8.0, bottom: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Icon(Icons.more_vert),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      //  height: 70,
                      width: 150,
                      child: Column(children: [
                        Divider(
                          color: Colors.black,
                        ),
                        Row(
                          children: [
                            Icon(Icons.share),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'share product',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ]),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
