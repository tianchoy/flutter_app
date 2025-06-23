import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget Contents() {
    return CupertinoPageScaffold(
      child: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Center(
            child: Text(
              'Welcome to Home Page',
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
      navigationBar: CupertinoNavigationBar(middle: const Text('首页')),
      child: Contents(),
    );
  }
}
