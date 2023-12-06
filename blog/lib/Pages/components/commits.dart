import 'package:flutter/material.dart';

class Commits extends StatefulWidget {
  const Commits({super.key});

  @override
  State<Commits> createState() => _CommitsState();
}

class _CommitsState extends State<Commits> {


  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        TextField(
          autofocus: true,
          decoration: InputDecoration(
            labelText: "username:",
            hintText: '输入用户名',
            prefixIcon: Icon(Icons.person),
          ),
          maxLength: 1,
        ),
        TextField(
          decoration: InputDecoration(
              labelText: "Content",
              hintText: "说点啥？",
              prefixIcon: Icon(Icons.comment)),
        ),
        // ElevatedButton(child: Text('发布'))
      ],
    );
  }
}
