// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'response/listData.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('hello,flutter'),
      ),
      body: const GrideView(),
    ));
  }
}

class GrideView extends StatelessWidget {
  const GrideView({Key? key}) : super(key: key);

  // List<Widget> _getGridViewData() {
  //   List<Widget> list = [];
  //   for (int i = 0; i <= 11; i++) {
  //     list.add(Container(
  //       alignment: Alignment.center,
  //       color: Colors.blue,
  //       child: Text(
  //         'No. $i item',
  //         style: const TextStyle(color: Colors.yellow, fontSize: 20),
  //       ),
  //     ));
  //   }

  //   return list;
  // }

  // Widget _getGridViewData(context, index) {
  //   return Container(
  //     decoration: BoxDecoration(
  //         border: Border.all(
  //       color: Colors.black,
  //       width: 1,
  //     )),
  //     child: Column(
  //       children: <Widget>[
  //         Image.asset(
  //           listData[index]["imgUrl"],
  //           fit: BoxFit.cover,
  //         ),
  //         Text(
  //           listData[index]["title"],
  //           style: const TextStyle(
  //             color: Colors.yellow,
  //             fontSize: 10,
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    // return GridView.count(
    //   crossAxisCount: 2,
    //   crossAxisSpacing: 10.0, //left-right
    //   mainAxisSpacing: 10.0, // top-bottom
    //   padding: const EdgeInsets.all(10), //bianju
    //   children: _getGridViewData(),
    // );
    // return GridView.builder(
    //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 2,
    //     crossAxisSpacing: 10.0, //left-right
    //     mainAxisSpacing: 10.0, // top-bottom
    //   ),
    //   padding: const EdgeInsets.all(10),
    //   itemCount: listData.length,
    //   itemBuilder: _getGridViewData,
    // );
    //padding
    // return Padding(
    //     padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
    //     child: GridView.count(
    //       crossAxisCount: 2,
    //       childAspectRatio: 1.7,
    //       children: <Widget>[
    //         Padding(
    //           padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
    //           child: Image.asset('images/1.jpg', fit: BoxFit.cover),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
    //           child: Image.asset('images/1.jpg', fit: BoxFit.cover),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
    //           child: Image.asset('images/1.jpg', fit: BoxFit.cover),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
    //           child: Image.asset('images/1.jpg', fit: BoxFit.cover),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
    //           child: Image.asset('images/1.jpg', fit: BoxFit.cover),
    //         ),
    //       ],
    //     ));

    //return IconRow(Icons.search, Colors.red, 32);
    return StackDemo();
  }
}

// ignore: must_be_immutable
// class IconRow extends StatelessWidget {
//   double size = 32.0;
//   Color color = Colors.red;
//   IconData icon;

//   IconRow(this.icon, this.color, this.size, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100.0,
//       height: 100.0,
//       color: color,
//       child: Center(
//         child: Icon(
//           icon,
//           size: size,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }

// class LayoutDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       width: 600.0,
//       height: 600.0,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: <Widget>[
//           Expanded(
//             flex: 1,
//             child: IconRow(Icons.home, Colors.red, 32),
//           ),
//           IconRow(Icons.search, Colors.blue, 32),
//           //IconRow(Icons.search, Colors.yellow, 32)
//         ],
//       ),
//     );
//   }
// }

// class Layout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Row(
//           children: <Widget>[
//             Expanded(
//               child: Container(
//                 height: 100.0,
//                 color: Colors.red,
//                 child: Text('hello'),
//               ),
//             )
//           ],
//         ),
//         Row(
//           children: <Widget>[
//             Expanded(
//               flex: 2,
//               child: Container(
//                 height: 100,
//                 child: Image.asset('images/2.jpg', fit: BoxFit.cover),
//               ),
//             ),
//             SizedBox(width: 10),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 height: 100,
//                 child: ListView(
//                   children: [
//                     Container(
//                       height: 45,
//                       child: Image.asset('images/2.jpg', fit: BoxFit.cover),
//                     ),
//                     SizedBox(height: 10),
//                     Container(
//                       height: 45,
//                       child: Image.asset('images/2.jpg', fit: BoxFit.cover),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         )
//       ],
//     );
//   }
// }

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack();
  }
}
