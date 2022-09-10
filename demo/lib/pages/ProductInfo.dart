import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductInfoPage extends StatefulWidget {
  Map arguments;
  ProductInfoPage({Key? key, required this.arguments}) : super(key: key);

  @override
  State<ProductInfoPage> createState() =>
      // ignore: no_logic_in_create_state
      _ProductInfoPageState(arguments: arguments);
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  Map arguments;
  _ProductInfoPageState({required this.arguments});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("商品详情页=${arguments['pid']}"),
    );
  }
}
