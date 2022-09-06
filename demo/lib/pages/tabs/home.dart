import 'package:flutter/material.dart';
import '../testRouter/Search.dart';
import '../testRouter/form.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //   builder: (context) => const SearchPage(),
            // ));
            Navigator.pushNamed(context, '/search', arguments: {"id": 123});
          },
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  const EdgeInsets.fromLTRB(20, 10, 20, 10))),
          child: const Text('跳转至分类页面'),
        ),
        const SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) => FormPage(title: 'formPage')));
            Navigator.pushNamed(context, '/form');
          },
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  const EdgeInsets.fromLTRB(20, 10, 20, 10))),
          child: const Text('跳转至搜索页面并传值'),
        )
      ],
    );
  }
}
