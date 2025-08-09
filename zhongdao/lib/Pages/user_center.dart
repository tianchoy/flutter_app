import 'package:flutter/cupertino.dart';
import '../Components/top_nav_bar.dart';
import 'package:get/get.dart';
import '../utils/logger.dart';

class UserCenter extends StatefulWidget {
  const UserCenter({super.key});

  @override
  State<UserCenter> createState() => _UserCenterState();
}

class _UserCenterState extends State<UserCenter> {
  final String _title = '个人中心';
  final bool _showBackButton = false;

  void onSettingsPressed() {
    logger.d('个人中心父组件处理右侧按钮逻辑');
  }

  Widget buildContents() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Center(
            child: Text(
              '欢迎来到个人中心页面',
              style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: CupertinoButton.filled(
              onPressed: () {
                logger.d('User Center Button Pressed!');
              },
              child: const Text('Click Me'),
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
        onRightTextPressed: () {
          Get.toNamed('/login');
        },
        showRight: true,
        rightText: '登陆',
      ),
      child: buildContents(),
    );
  }
}
