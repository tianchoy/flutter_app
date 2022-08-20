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
      body: HomePage(),
    ));
  }
}

// class GrideView extends StatelessWidget {
//   const GrideView({Key? key}) : super(key: key);

//   // List<Widget> _getGridViewData() {
//   //   List<Widget> list = [];
//   //   for (int i = 0; i <= 11; i++) {
//   //     list.add(Container(
//   //       alignment: Alignment.center,
//   //       color: Colors.blue,
//   //       child: Text(
//   //         'No. $i item',
//   //         style: const TextStyle(color: Colors.yellow, fontSize: 20),
//   //       ),
//   //     ));
//   //   }

//   //   return list;
//   // }

//   // Widget _getGridViewData(context, index) {
//   //   return Container(
//   //     decoration: BoxDecoration(
//   //         border: Border.all(
//   //       color: Colors.black,
//   //       width: 1,
//   //     )),
//   //     child: Column(
//   //       children: <Widget>[
//   //         Image.asset(
//   //           listData[index]["imgUrl"],
//   //           fit: BoxFit.cover,
//   //         ),
//   //         Text(
//   //           listData[index]["title"],
//   //           style: const TextStyle(
//   //             color: Colors.yellow,
//   //             fontSize: 10,
//   //           ),
//   //         )
//   //       ],
//   //     ),
//   //   );
//   // }

//   @override
//   Widget build(BuildContext context) {
//     // return GridView.count(
//     //   crossAxisCount: 2,
//     //   crossAxisSpacing: 10.0, //left-right
//     //   mainAxisSpacing: 10.0, // top-bottom
//     //   padding: const EdgeInsets.all(10), //bianju
//     //   children: _getGridViewData(),
//     // );
//     // return GridView.builder(
//     //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//     //     crossAxisCount: 2,
//     //     crossAxisSpacing: 10.0, //left-right
//     //     mainAxisSpacing: 10.0, // top-bottom
//     //   ),
//     //   padding: const EdgeInsets.all(10),
//     //   itemCount: listData.length,
//     //   itemBuilder: _getGridViewData,
//     // );
//     //padding
//     // return Padding(
//     //     padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
//     //     child: GridView.count(
//     //       crossAxisCount: 2,
//     //       childAspectRatio: 1.7,
//     //       children: <Widget>[
//     //         Padding(
//     //           padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
//     //           child: Image.asset('images/1.jpg', fit: BoxFit.cover),
//     //         ),
//     //         Padding(
//     //           padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
//     //           child: Image.asset('images/1.jpg', fit: BoxFit.cover),
//     //         ),
//     //         Padding(
//     //           padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
//     //           child: Image.asset('images/1.jpg', fit: BoxFit.cover),
//     //         ),
//     //         Padding(
//     //           padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
//     //           child: Image.asset('images/1.jpg', fit: BoxFit.cover),
//     //         ),
//     //         Padding(
//     //           padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
//     //           child: Image.asset('images/1.jpg', fit: BoxFit.cover),
//     //         ),
//     //       ],
//     //     ));

//     //return IconRow(Icons.search, Colors.red, 32);
//     return WrapDemo();
//   }
// }

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

// class StackAlignDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         width: 200,
//         height: 200,
//         color: Colors.red,
//         child: Stack(
//           children: const <Widget>[
//             Align(
//                 alignment: Alignment.topLeft,
//                 child: Icon(
//                   Icons.home,
//                   size: 20,
//                   color: Colors.white,
//                 )),
//             Align(
//               alignment: Alignment.center,
//               child: Icon(Icons.search, size: 20, color: Colors.black),
//             ),
//             Align(
//               alignment: Alignment.bottomRight,
//               child: Icon(Icons.send, size: 20, color: Colors.orange),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class StackPositionDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         width: 200,
//         height: 200,
//         color: Colors.red,
//         child: Stack(
//           children: const <Widget>[
//             Positioned(
//                 left: 0,
//                 child: Icon(Icons.home, size: 20, color: Colors.yellow)),
//             Positioned(
//                 left: 0,
//                 bottom: 0,
//                 child: Icon(Icons.search, size: 20, color: Colors.black)),
//             Positioned(
//                 right: 0,
//                 bottom: 0,
//                 child: Icon(Icons.send, size: 20, color: Colors.orange))
//           ],
//         ),
//       ),
//     );
//   }
// }

// class AspectRatioDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200,
//       child: AspectRatio(
//         aspectRatio: 2.0 / 1.0,
//         child: Container(
//           color: Colors.red,
//         ),
//       ),
//     );
//   }
// }

// class CardDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: <Widget>[
//         Card(
//           margin: const EdgeInsets.all(10),
//           child: Column(
//             children: const <Widget>[
//               ListTile(
//                 title: Text('tianchao', style: TextStyle(fontSize: 20)),
//                 subtitle: Text('web font-end developer'),
//               ),
//               ListTile(
//                 title: Text('tel:123456789'),
//               ),
//               ListTile(
//                 title: Text('adress:shanghai'),
//               )
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }

// class PicAndWordCardDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: <Widget>[
//         Card(
//           margin: const EdgeInsets.all(10),
//           child: Column(
//             children: <Widget>[
//               AspectRatio(
//                   aspectRatio: 16 / 9,
//                   child: Image.asset(
//                     'images/2.jpg',
//                     fit: BoxFit.cover,
//                   )),
//               const ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage('images/1.png'),
//                 ),
//                 title: Text('tianchao', style: TextStyle(fontSize: 20)),
//                 subtitle: Text('web font-end developer'),
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }

// class PicAndWordCardDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: listData.map((val) {
//         return Card(
//           margin: const EdgeInsets.all(10),
//           child: Column(
//             children: <Widget>[
//               AspectRatio(
//                   aspectRatio: 16 / 9,
//                   child: Image.asset(
//                     val["imgUrl"],
//                     fit: BoxFit.cover,
//                   )),
//               ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(val["imgUrl"]),
//                 ),
//                 title: Text(val["title"], style: const TextStyle(fontSize: 20)),
//                 subtitle: Text(
//                   val["aaa"],
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//             ],
//           ),
//         );
//       }).toList(),
//     );
//   }
// }

// class WrapDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       spacing: 10,
//       runSpacing: 10,
//       alignment: WrapAlignment.spaceBetween,
//       children: const [
//         MyButton(
//           text: '1111',
//         ),
//         MyButton(
//           text: '2222',
//         ),
//         MyButton(
//           text: '3333',
//         ),
//         MyButton(
//           text: '4444',
//         ),
//         MyButton(
//           text: '5555',
//         ),
//         MyButton(
//           text: '6666',
//         )
//       ],
//     );
//   }
// }

// class MyButton extends StatelessWidget {
//   final String text;

//   const MyButton({super.key, required this.text});
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//         style: ElevatedButton.styleFrom(
//             onPrimary: Colors.blue,
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(2.0))),
//         onPressed: () {},
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 12.0),
//           child: Text(
//             text,
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 20,
//             ),
//           ),
//         ));
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countNum = 0;
  List list = [];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: list.map((val) {
            return ListTile(
              title: Text(val["title"]),
            );
          }).toList(),
        ),
        RaisedButton(
            child: Text("getData"),
            onPressed: () {
              setState(() {
                list.add({"title": "news1"});
              });
            })
      ],
    );
  }
}
