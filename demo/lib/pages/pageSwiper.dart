import 'package:flutter/material.dart';
import './widget/image.dart';

class PageSwiperPage extends StatefulWidget {
  const PageSwiperPage({super.key});

  @override
  State<PageSwiperPage> createState() => _PageSwiperPageState();
}

class _PageSwiperPageState extends State<PageSwiperPage> {
  List<Widget> list = [];
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    list = const [
      ImagePage(src: 'images/2.jpg'),
      ImagePage(src: 'images/2.jpg'),
      ImagePage(src: 'images/2.jpg'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('pageSwiper'),
        ),
        body: Stack(
          children: [
            SizedBox(
              height: 200,
              child: PageView.builder(
                onPageChanged: (index) {
                  _currentIndex = 0;
                  setState(() {
                    _currentIndex = index % list.length;
                  });
                },
                itemCount: 10,
                itemBuilder: (context, index) {
                  return list[index % list.length];
                },
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(list.length, (index) {
                  return Container(
                    margin: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            _currentIndex == index ? Colors.blue : Colors.grey),
                  );
                }).toList(),
              ),
            ),
          ],
        ));
  }
}
