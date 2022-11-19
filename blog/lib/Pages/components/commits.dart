import 'package:flutter/material.dart';

class Commits extends StatefulWidget {
  const Commits({super.key});

  @override
  State<Commits> createState() => _CommitsState();
}

class _CommitsState extends State<Commits> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        TextField(
          autofocus: true,
          decoration: InputDecoration(
            labelText: "username:",
            hintText: 'please input username',
            prefixIcon: Icon(Icons.person),
          ),
          maxLength: 1,
        ),
        TextField(
          decoration: InputDecoration(
              labelText: "Content",
              hintText: "please input Content",
              prefixIcon: Icon(Icons.comment)),
        ),
      ],
    );
  }
}
