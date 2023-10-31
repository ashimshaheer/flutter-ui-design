import 'package:flutter/material.dart';

class orderscreen extends StatefulWidget {
  const orderscreen({super.key});

  @override
  State<orderscreen> createState() => _orderscreenState();
}

class _orderscreenState extends State<orderscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("order")),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'may 31,05:42 Pm',
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.blue,
                      ),
                      Text(
                        'Delivered',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('1 ITEM'),
                    Row(
                      children: [
                        Icon(Icons.receipt_long_outlined),
                        Text('RESEIPT'),
                      ],
                    ),
                  ]),
              Row(
                children: [
                  Image.asset(
                    'assets/pic1.jpg',
                    width: 60.0,
                    height: 90.0,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Explore | MEN | Navy blue',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('1 peace '),
                      const Text('Size:Xl'),
                      const SizedBox(
                        height: 10,
                      ),
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
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 27, 75, 114)),
                                          color: Colors.blue.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Image.asset(
                                        'assets/one.png',
                                        width: 30,
                                        height: 30,
                                      ),
                                    ),
                                    const Icon(Icons.close),
                                    const Icon(Icons.currency_rupee),
                                    const Text(
                                      '799',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                                const Row(
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
              const SizedBox(
                height: 10,
              ),
              const Divider(color: Colors.black),
              const SizedBox(
                height: 10,
              ),
              const Column(
                children: [
                  Row(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'delivery',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'FREE',
                        style: TextStyle(fontSize: 18, color: Colors.green),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
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
              const SizedBox(
                height: 10,
              ),
              const Divider(color: Colors.black),
              const SizedBox(
                height: 20,
              ),
              const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'GUSTOMER DETAILS',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.share,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'SHARE',
                            style: TextStyle(color: Colors.green),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deepa',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '+91=7829000484',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Image.asset(
                      'assets/whatsapp.png',
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/whatsapp(1).png',
                      width: 30,
                      height: 30,
                    )
                  ])
                ],
              ),
              const SizedBox(
                height: 13,
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Address',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'D1101 Chartered beverly',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
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
