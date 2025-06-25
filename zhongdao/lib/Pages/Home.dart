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

  // 处理返回按钮点击
  void _handleBackPressed() {
    logger.d('首页父组件处理返回逻辑');
    // 执行返回操作或其他逻辑
  }

  // 处理右侧按钮点击
  void onSearchPressed() {
    logger.d('首页父组件处理右侧按钮逻辑');
    // 执行添加操作或其他逻辑
  }

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
        rightButtonType: NavBarButtonType.search,
        onBackPressed: _handleBackPressed,
        onSearchPressed: onSearchPressed,
      ),
      child: buildContents(context),
    );
  }
}
