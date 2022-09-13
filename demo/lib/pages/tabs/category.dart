import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Row(
              children: const [
                Expanded(
                    child: TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(text: "热销"),
                    Tab(text: "推荐"),
                    Tab(text: "推荐"),
                    Tab(text: "推荐"),
                    Tab(text: "推荐"),
                  ],
                ))
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: const [
                  ListTile(title: Text('no1')),
                  ListTile(title: Text('no1')),
                  ListTile(title: Text('no1')),
                ],
              ),
              ListView(
                children: const [
                  ListTile(title: Text('no1')),
                  ListTile(title: Text('no1')),
                  ListTile(title: Text('no1')),
                ],
              ),
              ListView(
                children: const [
                  ListTile(title: Text('no1')),
                  ListTile(title: Text('no1')),
                  ListTile(title: Text('no1')),
                ],
              ),
              ListView(
                children: const [
                  ListTile(title: Text('no1')),
                  ListTile(title: Text('no1')),
                  ListTile(title: Text('no1')),
                ],
              ),
              ListView(
                children: const [
                  ListTile(title: Text('no1')),
                  ListTile(title: Text('no1')),
                  ListTile(title: Text('no1')),
                ],
              ),
            ],
          ),
        ));
  }
}
