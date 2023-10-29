import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class infoscreen extends StatelessWidget {
  infoscreen({super.key});
  List topic = [
    "Share Sukaan Spp",
    "Shange Sanguage",
    "Shatsapp Chat Support",
    "Privacy Policy",
    "Rate Us",
    "Sign Out"
  ];
  List _items = [
    Icons.share,
    Icons.language,
    Icons.chat,
    Icons.shopping_bag,
    Icons.rate_review,
    Icons.exit_to_app,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('additional information'),
      ),
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            IconData arrowRight = const IconData(0xe09e,
                fontFamily: 'MaterialIcons', matchTextDirection: true);
            return ListTile(
                leading: Icon(_items[index]),
                trailing: Icon(index == 0
                    ? arrowRight
                    : index == 1
                        ? arrowRight
                        : null),
                //     Expanded(
                //         child:Icon(index==2 ? LiteRollingSwitch(
                //       value: true,
                //       textOn: 'disponible',
                //       textOff: 'occupado',
                //       colorOn: Colors.greenAccent,
                //       colorOff: Colors.redAccent,
                //       iconOn: Icons.done,
                //       iconOff: Icons.remember_me_outlined,
                //       onChanged: (bool state) {
                //         print('turned ${(state) ? 'on' : 'off'}');
                //       },
                //       onDoubleTap: () {},
                //       onTap: () {},
                //       onSwipe: () {},
                //     );
                //     )
                //   ],
                // ),
                //   style: const TextStyle(
                //       color: Color.fromARGB(255, 14, 21, 14), fontSize: 50),
                // ),

                title: Text(topic[index]));
          }),
    ));
  }
}
