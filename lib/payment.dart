import 'package:flutter/material.dart';

class paymentscreen extends StatelessWidget {
  paymentscreen({super.key});

  List<String> features = [
    'Custom domain name',
    'Verified seller badge',
    'Dukaan for pc',
    'priority suppot',
  ];

  List<String> sub = [
    'get your own custom domain and build your brand on the internet',
    'get your own verified badge under your store name and build trust',
    'Access oil the exclusive premium features on Dukaan Pc',
    'Get your questions resolved with our priority customer support'
  ];

  List _iconlist = <IconData>[
    // Image.asset('assets/web.png'),
    // Image.asset('assets/verfied'),
    // Image.asset('assets/slow.png'),
    // Image.asset('assets/support.png'),
    Icons.web,
    Icons.verified,
    Icons.laptop,
    Icons.priority_high,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Stack(children: [
                    Positioned(
                      top: 0,
                      child: Container(
                        color: Color.fromARGB(255, 82, 132, 173),
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: const Padding(
                          padding: EdgeInsets.only(top: 25, left: 12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 70,
                              ),
                              Text(
                                'Dukaan Premium',
                                style: TextStyle(
                                    color: Colors.white,
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
                        color: Colors.white,
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
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                            )
                          ],
                          color: Colors.white,
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
                                      color: Colors.blue,
                                    ),
                                    child: Icon(
                                      Icons.shopping_bag,
                                      size: 40,
                                      color: Colors.white,
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
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            const Column(
                              children: [
                                Text(
                                  'Get Dukaan Premium for just ',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.currency_rupee),
                                    Text('4,999/year',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'All the advanced features for scaling your ',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 116, 107, 107)),
                                ),
                                Text('business',
                                    style: TextStyle(color: Colors.grey))
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
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: features.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(_iconlist[index]),
                      title: Text(
                        features[index],
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(sub[index]),
                    );
                  },
                ),
                const Divider(
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('what is Dukaan Premium?',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 320,
                        height: 20,
                        color: const Color.fromARGB(255, 88, 174, 190),
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
