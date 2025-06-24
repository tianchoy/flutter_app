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
  String _title = '首页';
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
    return ListView(
      children: [
        Center(
          child: Text(
            'Welcome to Home Page',
            style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
          ),
        ),
        const SizedBox(height: 20),
        Center(
          child: Text(
            '当前平台: ${MediaQuery.of(context).size.width}',
            style: CupertinoTheme.of(context).textTheme.textStyle,
          ),
        ),
        const SizedBox(height: 20),
        Center(
          child: CupertinoButton.filled(
            onPressed: () {
              setState(() {
                _title = GetPlatform.isIOS ? 'iOS平台' : 'Android平台';
              });
            },
            child: const Text('切换返回按钮状态'),
          ),
        ),
      ],
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
