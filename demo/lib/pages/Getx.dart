import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxPage extends StatelessWidget {
  const GetxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: 'warning',
                    middleText: 'do you want delete it?',
                    confirm: ElevatedButton(
                        onPressed: () {
                          print('sure');
                          Get.back();
                        },
                        child: const Text('sure')),
                    cancel: ElevatedButton(
                        onPressed: () {
                          print('cancel');
                          Get.back();
                        },
                        child: const Text('cancel')));
              },
              child: const Text('getx Button')),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Get.snackbar('notice!', 'You are not logged in yet!');
              },
              child: const Text('get SnackBar')),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  color: Get.isDarkMode ? Colors.black26 : Colors.white,
                  height: 200,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(
                          Icons.wb_sunny_outlined,
                          color: Colors.black87,
                        ),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                          Get.back();
                        },
                        title: const Text(
                          'white',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                      ListTile(
                        leading: const Icon(Icons.wb_sunny),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                          Get.back();
                        },
                        title: const Text(
                          'dark',
                          style: TextStyle(color: Colors.black87),
                        ),
                      )
                    ],
                  ),
                ));
              },
              child: const Text('change theme')),
        ],
      ),
    );
  }
}
