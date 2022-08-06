import 'package:flutter/material.dart';

class Hengxiang extends StatelessWidget {
  const Hengxiang({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180,
            color: Colors.red,
          ),
          Container(
            width: 180,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
