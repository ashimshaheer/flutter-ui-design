import 'package:flutter/material.dart';

class catelogscreen extends StatefulWidget {
  const catelogscreen({super.key});

  @override
  State<catelogscreen> createState() => _catelogscreenState();
}

// categorysub category = categorysub();

class _catelogscreenState extends State<catelogscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
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
        ));
  }
}

class categorysub extends StatefulWidget {
  categorysub({super.key});

  @override
  State<categorysub> createState() => _categorysubState();
}

class _categorysubState extends State<categorysub> {
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

  bool light = true;

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
                                const EdgeInsets.only(bottom: 3.0, left: 10.0),
                            child: Image.asset(
                              _imagecate[index],
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                              alignment: Alignment.topLeft,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 252,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    _titile[index],
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const Icon(Icons.more_vert),
                                ],
                              ),
                            ),
                            const Text(
                              '1 pease',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
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
                            Column(
                              children: [
                                SizedBox(
                                  width: 252,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'in stock',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                      Switch(
                                          value: light,
                                          onChanged: (bool value) {
                                            setState(() {
                                              light = value;
                                            });
                                          })
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: SizedBox(
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
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
