// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

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
      body: const Hengxiang(),
    ));
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        children: <Widget>[
          Image.asset('images/2.jpg'),
          ListTile(
            leading: Image.asset('images/1.png'),
            title: const Text(
              'datatable 统计当前页的总数和统计所有页面的总数',
              style: TextStyle(color: Colors.blue),
            ),
            subtitle: const Text(
              'bootstrap 使用了datatable 作为表单展示数据，datatable的功能非常强大，其中在分页后统计数据上也很方便，只需要简单的配置即',
              style: TextStyle(color: Colors.black87),
            ),
            trailing: const CircleAvatar(
              backgroundImage: AssetImage(
                  "images/1.png"), // no matter how big it is, it won't overflow
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  "images/1.png"), // no matter how big it is, it won't overflow
            ),
            title: Text('jquery 根据分类id分割数组'),
            subtitle: Text(
                '写项目的时候遇到一个问题，后端把所有的数据返回到一个数组里，根据分类的id来判断是属于哪一类的，现在把分类的方法记录一下。'),
          )
        ],
      ),
    );
  }
}

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
