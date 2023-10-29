import 'package:flutter/material.dart';

// class catelogscreen extends StatefulWidget {
//   const catelogscreen({super.key});

//   @override
//   State<catelogscreen> createState() => _catelogscreenState();
// }

// class _catelogscreenState extends State<catelogscreen> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//           length: 2,
//           child: SafeArea(
//             child: Scaffold(
//               appBar: AppBar(
//                 title: const Text("category"),
//                 bottom: const TabBar(tabs: [
//                   Tab(
//                     text: 'product',
//                   ),
//                   Tab(
//                     text: 'categories',
//                   )
//                 ]),
//               ),
//               body: const TabBarView(children: [
//                 Center(
//                   child: Text('product'),
//                 ),
//                 Center(
//                   child: Text('category'),
//                 )
//               ]),
//             ),
//           )),
//     );
//   }
// }

class categorysub extends StatelessWidget {
  categorysub({super.key});
  List _imagecate = [
    'assets/pic1.jpg',
    'assets/pic2.jpg',
    'assets/pic3.jpg',
    'assets/pic4.jpg',
    'assets/pic5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            height: 150,
            color: const Color.fromARGB(255, 235, 231, 231),
            child: Container(
              height: 80,
              width: 80,
              child: Image.asset(_imagecate[index], color: Colors.white),
            ),
          ),
        );
      }),
    );
  }
}
