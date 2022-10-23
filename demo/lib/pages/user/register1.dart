import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register1Page extends StatelessWidget {
  const Register1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('diyibu'),
      ),
      body: Column(
        children: [
          const Text('phone Numer'),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: () => {
                    //Navigator.of(context).pushReplacementNamed('/register2')
                    Get.toNamed('/register2')
                  },
              child: const Text('next'))
        ],
      ),
    );
  }
}
