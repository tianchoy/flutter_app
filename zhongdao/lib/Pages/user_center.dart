import 'package:flutter/cupertino.dart';
import '../Components/top_nav_bar.dart';
import '../utils/logger.dart';

class UserCenter extends StatefulWidget {
  const UserCenter({super.key});

  @override
  State<UserCenter> createState() => _UserCenterState();
}

class _UserCenterState extends State<UserCenter> {
  final String _title = '个人中心';
  final bool _showBackButton = false;

  void _handleBackPressed() {
    logger.d('个人中心父组件处理返回逻辑');
  }

  void onSettingsPressed() {
    logger.d('个人中心父组件处理右侧按钮逻辑');
  }

  Widget buildContents() {
    return CupertinoPageScaffold(
      child: ListView(
        children: [
          Center(
            child: Text(
              'Welcome to User Center',
              style: CupertinoTheme.of(
                context,
              ).textTheme.navLargeTitleTextStyle,
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: CupertinoButton.filled(
              onPressed: () {
                // Action when button is pressed
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
        rightButtonType: NavBarButtonType.settings,
        onBackPressed: _handleBackPressed,
        onSettingsPressed: onSettingsPressed,
      ),
      child: buildContents(),
    );
  }
}
