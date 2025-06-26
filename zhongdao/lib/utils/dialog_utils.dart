import 'package:flutter/cupertino.dart';

Future<void> showCustomCupertinoDialog({
  required BuildContext context,
  required String title,
  required String content,
  String confirmText = '确定',
}) async {
  return showCupertinoDialog(
    context: context,
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          CupertinoDialogAction(
            child: Text(confirmText),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      );
    },
  );
}
