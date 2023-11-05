import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/app/utils/constant.dart';
import 'package:loginapp/app/controller/payment_controll.dart';

// ignore: camel_case_types
class paymentscreen extends StatelessWidget {
  paymentscreen({super.key});

  final Constans controlcolor = Constans();
  final PayementControl controller = Get.put(PayementControl());

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
                    color: Constans.white,
                    border: Border.all(color: Constans.white),
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
              Constans().sbHt15,
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
                        style: TextStyle(color: Constans.grey),
                      ),
                      Icon(Icons.arrow_right)
                    ],
                  )
                ],
              ),
              Constans().sbHt15,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Payment profile ', style: TextStyle(fontSize: 16)),
                  Row(
                    children: [
                      Text('Bank Account',
                          style: TextStyle(color: Constans.grey)),
                      Icon(Icons.arrow_right)
                    ],
                  )
                ],
              ),
              Constans().sbHt10,
              const Divider(
                color: Constans.grey,
              ),
              Constans().sbHt10,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Payment overview ', style: TextStyle(fontSize: 18)),
                  Row(
                    children: [
                      Text('Life time', style: TextStyle(color: Constans.grey)),
                      Icon(Icons.arrow_drop_down)
                    ],
                  )
                ],
              ),
              Constans().sbHt10,
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Constans.orange,
                            borderRadius: BorderRadius.circular(8.0)),
                        width: 160,
                        height: 90,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('AMOUNT ON HOLD',
                                  style: TextStyle(color: Constans.white)),
                              Constans().sbHt10,
                              const Row(
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    color: Constans.white,
                                  ),
                                  Text(
                                    '0',
                                    style: TextStyle(
                                        color: Constans.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Constans().sbWd10,
                      Container(
                        width: 160,
                        height: 90,
                        decoration: BoxDecoration(
                            color: Constans.green,
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('AMOUNT RECEIVED',
                                  style: TextStyle(color: Constans.white)),
                              Constans().sbHt10,
                              const Row(
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    color: Constans.white,
                                  ),
                                  Text(
                                    '13,332',
                                    style: TextStyle(
                                        color: Constans.white,
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
              Constans().sbHt15,
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
              Constans().sbHt15,
              GetBuilder<PayementControl>(
                builder: (controller) => Row(
                  children: [
                    SizedBox(
                      width: 80,
                      height: 35,
                      child: ElevatedButton(
                        onPressed: () {
                          controller.buttonFunction(0);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: controller.hasBeenPressed == 0
                                ? Constans.blue
                                : Constans.grey,
                            elevation: 0.0,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            textStyle: const TextStyle(
                              color: Constans.white,
                            )),
                        child: Text(
                          'on hold',
                          style: TextStyle(
                            color: controller.hasBeenPressed == 0
                                ? Constans.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Constans().sbwt15,
                    SizedBox(
                      width: 110,
                      height: 35,
                      child: ElevatedButton(
                        onPressed: () {
                          controller.buttonFunction(1);
                        },
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            backgroundColor: controller.hasBeenPressed == 1
                                ? Constans.blue
                                : Constans.grey,
                            elevation: 0.0,
                            textStyle: const TextStyle(
                              color: Constans.white,
                            )),
                        child: Text(
                          'Payout(15)',
                          style: TextStyle(
                            color: controller.hasBeenPressed == 1
                                ? Constans.white
                                : Constans.black,
                          ),
                        ),
                      ),
                    ),
                    Constans().sbwt15,
                    SizedBox(
                      width: 80,
                      height: 35,
                      child: ElevatedButton(
                        onPressed: () {
                          controller.buttonFunction(2);
                        },
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            backgroundColor: controller.hasBeenPressed == 2
                                ? Constans.blue
                                : Constans.grey,
                            elevation: 0.0,
                            textStyle: const TextStyle(
                              color: Constans.white,
                            )),
                        child: Text(
                          'refund',
                          style: TextStyle(
                            color: controller.hasBeenPressed == 2
                                ? Constans.white
                                : Constans.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              GetBuilder<PayementControl>(
                builder: (controller) => ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.imagesOfPayment.length,
                  shrinkWrap: true,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.asset(
                        controller.hasBeenPressed == 0
                            ? controller.imagesOfPayment[index]
                            : controller.hasBeenPressed == 1
                                ? controller.imagesOneOfPayment[index]
                                : controller.imagesTwoOfPayment[index],
                        width: 40,
                        height: 40,
                        fit: BoxFit.fitHeight,
                      ),
                      title: Text(
                        controller.hasBeenPressed == 0
                            ? controller.titleOfPayment[index]
                            : controller.hasBeenPressed == 1
                                ? controller.titleOfPayment[index]
                                : controller.titletTwoOfPayment[index],
                      ),
                      subtitle: Text(
                        controller.hasBeenPressed == 0
                            ? controller.subtitileOfPayment[index]
                            : controller.hasBeenPressed == 1
                                ? controller.subtitileOneOfPayment[index]
                                : controller.subtitileTwoOfPayment[index],
                      ),
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
                                  color: Constans.blue,
                                ),
                                Text(
                                  controller.hasBeenPressed == 0
                                      ? controller.rateOfPayment[index]
                                      : controller.hasBeenPressed == 1
                                          ? controller.rateOneOfPayment[index]
                                          : controller.rateTwoOfPayment[index],
                                  style: const TextStyle(
                                      color: Constans.blue,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Constans().sbwt8,
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 10,
                                  color: Constans.green,
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
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
