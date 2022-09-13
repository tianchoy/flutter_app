import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            // title: const Text('AppBarDemo'),
            // centerTitle: true,
            // backgroundColor: Colors.blue,
            // leading: IconButton(
            //   icon: const Icon(Icons.menu),
            //   onPressed: () {
            //     print('menu');
            //   },
            // ),
            // actions: [
            //   IconButton(onPressed: () => {}, icon: const Icon(Icons.search)),
            //   IconButton(onPressed: () => {}, icon: const Icon(Icons.settings))
            // ],
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(text: '热门'),
                Tab(
                  text: '推荐',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: const [
                  ListTile(
                    title: Text('no.1 tabs'),
                  ),
                  ListTile(
                    title: Text('no.1 tabs'),
                  ),
                  ListTile(
                    title: Text('no.1 tabs'),
                  ),
                ],
              ),
              ListView(
                children: const [
                  ListTile(
                    title: Text('no.2 tabs'),
                  ),
                  ListTile(
                    title: Text('no.2 tabs'),
                  ),
                  ListTile(
                    title: Text('no.2 tabs'),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
