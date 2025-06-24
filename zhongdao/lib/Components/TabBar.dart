import 'package:flutter/cupertino.dart';
import '../Pages/Home.dart';
import '../Pages/userCenter.dart';

class TabBar extends StatefulWidget {
  const TabBar({super.key});

  @override
  State<TabBar> createState() => _TabBarState();
}

class _TabBarState extends State<TabBar> {
  int _currentIndex = 0;

  final List _allPage = [const Home(), const UserCenter()];

  _changePage(index) {
    setState(() {
      if (_currentIndex != index) {
        _currentIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: '首页',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              label: '我的',
            ),
          ],
          currentIndex: _currentIndex,
          onTap: _changePage,
        ),
        tabBuilder: (context, index) {
          return _allPage[index];
        },
      ),
    );
  }
}
