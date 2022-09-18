import 'package:flutter/material.dart';

class MyDiago extends Dialog {
  final String title;
  final String content;
  final Function()? onTap;
  const MyDiago(this.title, this.content, this.onTap, {super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(5),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            title,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: onTap,
                            child: const Icon(Icons.close),
                          ),
                        )
                      ],
                    )),
                const Divider(),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  child: Text(
                    content,
                    style: const TextStyle(fontSize: 14),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
