import 'package:demo/pages/tabs.dart';
import 'package:flutter/material.dart';

class Register2Page extends StatelessWidget {
  const Register2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('No.2 veri code')),
      body: Center(
        child: Column(
          children: [
            const Text('Finised!'),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () => {
                      //Navigator.of(context).pop()
                      Navigator.of(context).pushAndRemoveUntil(
                          new MaterialPageRoute(
                              builder: (context) => new Tabs()),
                          (route) => false)
                    },
                child: const Text('Finised!'))
          ],
        ),
      ),
    );
  }
}
