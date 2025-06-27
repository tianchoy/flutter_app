import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoTheme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '登录',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: CupertinoTheme.of(context).textTheme.textStyle.color,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '请输入您的凭证以继续',
                  style: TextStyle(
                    fontSize: 16,
                    color: CupertinoColors.secondaryLabel.resolveFrom(context),
                  ),
                ),
                const SizedBox(height: 40),
                CupertinoTextField(
                  placeholder: '输入手机号',
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(CupertinoIcons.phone, size: 22),
                  ),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: CupertinoColors.tertiarySystemBackground.resolveFrom(
                      context,
                    ),
                    border: Border.all(
                      color: CupertinoColors.systemGrey.resolveFrom(context),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                const SizedBox(height: 20),
                CupertinoTextField(
                  placeholder: '输入密码',
                  obscureText: true, //显示为黑点
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(CupertinoIcons.lock, size: 22),
                  ),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: CupertinoColors.tertiarySystemBackground.resolveFrom(
                      context,
                    ),
                    border: Border.all(
                      color: CupertinoColors.systemGrey.resolveFrom(context),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: CupertinoButton.filled(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text('登录'),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: CupertinoButton(
                    onPressed: () {},
                    child: Text(
                      '忘记密码?',
                      style: TextStyle(
                        color: CupertinoTheme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
