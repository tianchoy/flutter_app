import 'package:flutter/material.dart';
import 'package:demo/response/listData.dart';

class Dongtai extends StatelessWidget {
  // List<Widget> _getData() {
  //   List<Widget> list = [];
  //   for (int i = 0; i < 10; i++) {
  //     list.add(ListTile(
  //       title: Text('标题$i'),
  //     ));
  //   }

  //   return list; //如果是map操作就需调用toList(),=> list.toList()
  // }

  // List<Widget> _getMapList() {
  //   var tempList = listData.map((val) {
  //     return ListTile(
  //       leading: Image.asset(val["imgUrl"]),
  //       title: Text(val["title"]),
  //       subtitle: Text(val["aaa"]),
  //     );
  //   });

  //   return tempList.toList();
  // }

  // List<Widget> list = [];

  // Dongtai() {
  //   for (int i = 0; i < 20; i++) {
  //     this.list.add(ListTile(title: Text("第$i条数据")));
  //   }
  // }

  Widget _getWidgetData(context, index) {
    return ListTile(
      leading: Image.asset(listData[index]["imgUrl"]),
      title: Text(listData[index]["title"]),
      subtitle: Text(listData[index]["aaa"]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listData.length, itemBuilder: _getWidgetData);
  }
}
