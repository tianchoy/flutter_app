import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:simple_html_css/simple_html_css.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List homeData = [];

  Future _getData() async {
    var dio = Dio();
    try {
      Response res = await dio.get('https://www.tianchoy.com/api/getIndex.php');
      return res.data;
    } catch (e) {
      return print(e);
    }
  }

  @override
  initState() {
    super.initState();
    _getData().then((val) {
      setState(() {
        homeData = val['data'].toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('首页'),
        ),
        body: homeData.isNotEmpty
            ? ListView(
                children: homeData.map((value) {
                  return ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Center(
                        child: Text(
                          value["title"],
                          style: const TextStyle(
                              fontSize: 18.0, color: Colors.blue),
                        ),
                      ),
                    ),
                    //subtitle: HTML.toRichText(context, value["content"]),
                    subtitle: RichText(
                      text: HTML.toTextSpan(context, value["content"]),
                      maxLines: 5,
                    ),
                    onTap: () {
                      print(value['id']);
                    },
                    contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  );
                }).toList(),
              )
            : const Text("加载中..."));
  }
}
