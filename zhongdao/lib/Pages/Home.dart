import 'package:flutter/cupertino.dart';
import '../Components/top_nav_bar.dart';
import '../utils/logger.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // 导航栏配置状态
  final String _title = '首页';
  RxString test = '测试'.obs;
  final bool _showBackButton = false;

  Widget buildContents(context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Center(
            child: Text(
              '欢迎来到首页',
              style: CupertinoTheme.of(context).textTheme.textStyle,
            ),
          ),
          const SizedBox(height: 20),
          Obx(
            () => Center(
              child: Text(
                '当前平台: ${test.value}',
                style: CupertinoTheme.of(context).textTheme.textStyle,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: CupertinoButton.filled(
              onPressed: () {
                Get.toNamed('/login');
              },
              child: const Text('登陆'),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: TopNavBar(
        title: _title,
        showBackButton: _showBackButton,
        rightButtonType: NavBarButtonType.none,
        showRight: false,
      ),
      child: buildContents(context),
    );
  }
}
