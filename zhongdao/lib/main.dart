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
        scaffoldBackgroundColor: const Color(0xFFF2F2F7),
      ),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 300),
      initialRoute: '/',
      getPages: AppRouter.routes,
    );
  }
}
