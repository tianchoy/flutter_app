import 'package:flutter/cupertino.dart';
import '../Components/top_nav_bar.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  Widget contents() {
    return Container(
      padding: const EdgeInsets.all(20.0),
      color: CupertinoColors.tertiarySystemBackground.resolveFrom(context),
      alignment: Alignment.center,
      width: double.infinity,
      child: ListView(
        children: [
          Text('This is the message page.', style: TextStyle(fontSize: 20.0)),
          SizedBox(height: 20.0),
          Text(
            'You can add more content here.',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: TopNavBar(
        title: '消息',
        showBackButton: false,
        rightButtonType: NavBarButtonType.none,
      ),
      child: contents(),
    );
  }
}
