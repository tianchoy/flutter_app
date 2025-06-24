import 'package:flutter/cupertino.dart';
import '../Components/TopNavBar.dart';
import '../utils/logger.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // 导航栏配置状态
  String _title = '首页';
  bool _showBackButton = false;

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

  Widget buildContents() {
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
          child: CupertinoButton.filled(
            onPressed: () {
              // 动态修改导航栏配置示例
              setState(() {
                _showBackButton = !_showBackButton;
                _title = _showBackButton ? '返回已启用' : '首页';
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
      child: buildContents(),
    );
  }
}
