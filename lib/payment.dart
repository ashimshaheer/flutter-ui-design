import 'package:flutter/material.dart';

// ignore: camel_case_types
class paymentscreen extends StatefulWidget {
  const paymentscreen({super.key});

  @override
  State<paymentscreen> createState() => _paymentscreenState();
}

// ignore: camel_case_types
class _paymentscreenState extends State<paymentscreen> {
  int _hasBeenPressed = 0;

  final List _title = [
    'Order #1688068',
    'order #6546515',
    'order #6511515',
  ];
  final List _subtitile = [
    'jul 12,02.08 PM',
    'apr 12,02.08 PM',
    'apr 11,03.08 PM',
  ];

  final List _rate = [
    '799',
    '3874',
    '686.43',
  ];
  final List _images = [
    'assets/pic3.jpg',
    'assets/pic2.jpg',
    'assets/pic1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Payments"),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                width: 330,
                height: 180,
                decoration: BoxDecoration(
                    boxShadow: const [BoxShadow(blurRadius: 1)],
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Transaction LImit',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                          'A free limit up to which you will receive the online payments directly in your bank'),
                      const SizedBox(
                        height: 15,
                      ),
                      const LinearProgressIndicator(
                        backgroundColor: Colors.grey,
                        value: 0.3,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('36668 left out of 50,000'),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 125,
                        height: 35,
                        child: ElevatedButton(
                          onPressed: () {},
                          // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                          style: ElevatedButton.styleFrom(
                              elevation: 12.0,
                              textStyle: const TextStyle(color: Colors.white)),
                          child: const Text(
                            'Incresed Limit',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Default Method',
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    children: [
                      Text(
                        'Online  Payments',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(Icons.arrow_right)
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Payment profile ', style: TextStyle(fontSize: 16)),
                  Row(
                    children: [
                      Text('Bank Account',
                          style: TextStyle(color: Colors.grey)),
                      Icon(Icons.arrow_right)
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Payment overview ', style: TextStyle(fontSize: 18)),
                  Row(
                    children: [
                      Text('Life time', style: TextStyle(color: Colors.grey)),
                      Icon(Icons.arrow_drop_down)
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(8.0)),
                        width: 160,
                        height: 90,
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('AMOUNT ON HOLD',
                                  style: TextStyle(color: Colors.white)),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '0',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 160,
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8.0)),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('AMOUNT RECEIVED',
                                  style: TextStyle(color: Colors.white)),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '13,332',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Transactions',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _hasBeenPressed = 0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: _hasBeenPressed == 0
                              ? Colors.blue
                              : Colors.grey[300],
                          elevation: 0.0,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          textStyle: const TextStyle(
                            color: Colors.white,
                          )),
                      child: Text(
                        'on hold',
                        style: TextStyle(
                          color: _hasBeenPressed == 0
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    width: 110,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _hasBeenPressed = 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          backgroundColor: _hasBeenPressed == 1
                              ? Colors.blue
                              : Colors.grey[300],
                          elevation: 0.0,
                          textStyle: const TextStyle(
                            color: Colors.white,
                          )),
                      child: Text(
                        'Payout(15)',
                        style: TextStyle(
                          color: _hasBeenPressed == 1
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    width: 80,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _hasBeenPressed = 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          backgroundColor: _hasBeenPressed == 2
                              ? Colors.blue
                              : Colors.grey[300],
                          elevation: 0.0,
                          textStyle: const TextStyle(
                            color: Colors.white,
                          )),
                      child: Text(
                        'refund',
                        style: TextStyle(
                          color: _hasBeenPressed == 2
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _images.length,
                shrinkWrap: true,
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset(
                      _images[index],
                      width: 40,
                      height: 40,
                      fit: BoxFit.fitHeight,
                    ),
                    title: Text(_title[index]),
                    subtitle: Text(_subtitile[index]),
                    trailing: SizedBox(
                      width: 100,
                      height: 60,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.currency_rupee,
                                size: 13,
                                color: Colors.blue,
                              ),
                              Text(
                                _rate[index],
                                style: const TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.circle,
                                size: 10,
                                color: Colors.green,
                              ),
                              Text('successful'),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
