import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final arguments;
  const SearchPage({super.key, this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('搜索页面'),
      ),
      body: Text('搜索页面内容区域${arguments != null ? arguments['id'] : '0'}'),
    );
  }
}
