import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

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
            //Navigator.pushNamed(context, '/search', arguments: {"id": 123});
            Get.toNamed('/search');
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
        ),
        const SizedBox(
          height: 20.0,
        ),
        ElevatedButton(
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) => FormPage(title: 'formPage')));
            //Navigator.pushNamed(context, '/product');
            Get.toNamed('/prodect');
          },
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  const EdgeInsets.fromLTRB(20, 10, 20, 10))),
          child: const Text('跳转至商品页面'),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
            onPressed: () => {Navigator.pushNamed(context, '/login')},
            child: const Text('Login')),
        const SizedBox(height: 30),
        ElevatedButton(
            onPressed: () => {Navigator.pushNamed(context, '/register1')},
            child: const Text('Register')),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
            onPressed: () =>
                {Navigator.pushNamed(context, '/tabBarController')},
            child: const Text('TabBarControllerPage')),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () => {Navigator.pushNamed(context, '/diago')},
            child: const Text('diago')),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () => {Navigator.pushNamed(context, '/pageview')},
            child: const Text('pageview')),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () => {Navigator.pushNamed(context, '/pageswiper')},
            child: const Text('swiper')),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () => {
                  //Navigator.pushNamed(context, '/getx');
                  Get.toNamed('/getx')
                },
            child: const Text('Getx'))
      ],
    );
  }
}
