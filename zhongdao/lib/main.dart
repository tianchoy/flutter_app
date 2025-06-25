import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'Router/router.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      title: '中导物联',
      theme: CupertinoThemeData(
        primaryColor: const Color(0xFF007AFF),
        scaffoldBackgroundColor: CupertinoColors.systemBackground, // 改为系统背景色
        brightness: Brightness.light, // 强制亮色主题
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(
            fontFamily: 'PingFang SC', // 使用中文字体
            color: CupertinoColors.label, // 标签颜色适配主题
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 300),
      initialRoute: '/',
      getPages: AppRouter.routes,
    );
  }
}
