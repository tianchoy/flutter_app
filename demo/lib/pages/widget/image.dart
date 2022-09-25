import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final double width;
  final double heihgt;
  final String src;
  const ImagePage(
      {super.key,
      this.width = double.infinity,
      this.heihgt = 200,
      required this.src});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: heihgt,
      child: Image.asset(
        src,
        fit: BoxFit.cover,
      ),
    );
  }
}
