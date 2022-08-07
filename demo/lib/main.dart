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
        width: 2,
      )),
      child: Column(
        children: <Widget>[
          Image.asset(listData[index]["imgUrl"]),
          const SizedBox(height: 20.0),
          Text(
            listData[index]["title"],
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
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
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0, //left-right
        mainAxisSpacing: 10.0, // top-bottom
      ),
      itemCount: listData.length,
      itemBuilder: _getGridViewData,
    );
  }
}
