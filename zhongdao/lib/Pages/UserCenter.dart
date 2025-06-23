import 'package:flutter/cupertino.dart';

class UserCenter extends StatefulWidget {
  const UserCenter({super.key});

  @override
  State<UserCenter> createState() => _UserCenterState();
}

class _UserCenterState extends State<UserCenter> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: const Text('个人中心')),
      child: Center(
        child: Text(
          'Welcome to User Center',
          style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
        ),
      ),
    );
  }
}
