import 'package:flutter/material.dart';
import 'package:loginapp/app/utils/constant.dart';

class OrderScreen extends StatelessWidget {
  OrderScreen({super.key});

  final Constans constans = Constans();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("order")),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'May 31,05:42 Pm',
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.circle,
                        color: Constans.blue,
                        size: 16,
                      ),
                      Constans().sbwt8,
                      const Text(
                        'Delivered',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
              Constans().sbHt8,
              const Divider(
                color: Constans.black,
              ),
              Constans().sbHt8,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text('1 ITEM'),
                Row(
                  children: [
                    const Icon(
                      Icons.receipt_long_outlined,
                      color: Colors.blue,
                    ),
                    Constans().sbHt8,
                    const Text(
                      'RESEIPT',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ]),
              Row(
                children: [
                  Image.asset(
                    'assets/images/pic1.jpg',
                    width: 60.0,
                    height: 90.0,
                    fit: BoxFit.cover,
                  ),
                  Constans().sbWd10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Constans().sbHt10,
                      Constans().sbHt5,
                      const Text(
                        'Explore | MEN | Navy blue',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Constans().sbHt8,
                      const Text('1 peace '),
                      const Text('Size:Xl'),
                      Constans().sbHt10,
                      Column(
                        children: [
                          SizedBox(
                            width: 250,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Constans.blue),
                                          color: Constans.blue.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Image.asset(
                                        'assets/images/one.png',
                                        width: 25,
                                        height: 25,
                                      ),
                                    ),
                                    const Icon(Icons.close),
                                    const Icon(
                                      Icons.currency_rupee,
                                      size: 20,
                                    ),
                                    const Text(
                                      '799',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.currency_rupee,
                                      size: 20,
                                    ),
                                    Text(
                                      '799',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Constans().sbHt10,
              const Divider(color: Colors.black),
              Constans().sbHt10,
              Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'item total',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.currency_rupee,
                            size: 20,
                          ),
                          Text(
                            '799',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Constans().sbHt8,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'delivery',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'FREE',
                        style: TextStyle(fontSize: 18, color: Constans.green),
                      )
                    ],
                  ),
                  Constans().sbHt10,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Grand Total',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Icon(Icons.currency_rupee),
                          Text(
                            '799',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Constans().sbHt10,
              const Divider(color: Constans.black),
              Constans().sbHt20,
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'GUSTOMER DETAILS',
                        style: TextStyle(color: Constans.grey, fontSize: 18),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.share,
                            color: Constans.green,
                          ),
                          Constans().sbwt8,
                          const Text(
                            'SHARE',
                            style: TextStyle(color: Constans.green),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              Constans().sbHt10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Deepa',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Constans().sbHt8,
                      const Text(
                        '+91=7829000484',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Image.asset(
                      'assets/images/whatsapp.png',
                      width: 30,
                      height: 30,
                    ),
                    Constans().sbWd10,
                    Image.asset(
                      'assets/images/whatsapp(1).png',
                      width: 30,
                      height: 30,
                    )
                  ])
                ],
              ),
              Constans().sbHt10,
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Address',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Constans().sbHt8,
                      const Text(
                        'D1101 Chartered beverly',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const Text(
                        'Hills, subramayapura p.o',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
