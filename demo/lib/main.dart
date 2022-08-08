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
        title: const Text('Flutter-title'),
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

  Widget _getGridViewData(context, index) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.black,
        width: 1,
      )),
      child: Column(
        children: <Widget>[
          Image.asset(
            listData[index]["imgUrl"],
            fit: BoxFit.cover,
          ),
          Text(
            listData[index]["title"],
            style: const TextStyle(
              color: Colors.yellow,
              fontSize: 10,
            ),
          )
        ],
      ),
    );
  }

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

    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: Image.asset('images/2.jpg', fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: Image.asset('images/2.jpg', fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: Image.asset('images/2.jpg', fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: Image.asset('images/2.jpg', fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: Image.asset('images/2.jpg', fit: BoxFit.cover),
        ),
      ],
    );
  }
}
