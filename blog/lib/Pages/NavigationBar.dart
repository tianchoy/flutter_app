import 'package:flutter/material.dart';
import 'Tabs/Home.dart';
import 'Tabs/Talk.dart';
import 'Tabs/GuestBook.dart';
import 'Tabs/Archive.dart';
import 'Tabs/Me.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0;

  final List _allPage = [
    const HomePage(),
    const TalkPage(),
    const GuestBookPage(),
    const ArchivePage(),
    const MePage()
  ];

  _changePage(index) {
    setState(() {
      if (_currentIndex != index) {
        _currentIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _allPage[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '首页',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.textsms), label: '说说'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: '留言板'),
          BottomNavigationBarItem(icon: Icon(Icons.library_books), label: '归档'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '我')
        ],
        selectedItemColor: Colors.blue,
        iconSize: 25.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          _changePage(index);
        },
      ),
    );
  }
}
