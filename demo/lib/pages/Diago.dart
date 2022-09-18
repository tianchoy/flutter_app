import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import './widget/MyDiago.dart';

class DiagoPage extends StatefulWidget {
  const DiagoPage({super.key});

  @override
  State<DiagoPage> createState() => _DiagoPageState();
}

class _DiagoPageState extends State<DiagoPage> {
  void _alertDiago() async {
    var res = await showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Warning'),
            content: const Text('data'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop('ok!');
                  },
                  child: const Text('ok')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop('cancel!');
                  },
                  child: const Text('cancel'))
            ],
          );
        });

    print(res);
  }

  void _simpleDialog() async {
    var res = await showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text('choose language'),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  Navigator.of(context).pop('Chinese');
                },
                child: const Text('Chinese'),
              ),
              const Divider(),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.of(context).pop('English');
                },
                child: const Text('English'),
              ),
              const Divider(),
            ],
          );
        });
    print(res);
  }

  void _bottomDiaog() async {
    var res = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return SizedBox(
            height: 200,
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.pop(context, 'a');
                  },
                  title: const Text('aaaa'),
                ),
                const Divider(),
                ListTile(
                  onTap: () {
                    Navigator.pop(context, 'b');
                  },
                  title: const Text('bbb'),
                ),
                const Divider(),
                ListTile(
                  onTap: () {
                    Navigator.pop(context, 'data');
                  },
                  title: const Text('data'),
                ),
                const Divider(),
              ],
            ),
          );
        });
    print(res);
  }

  void _fluttertoast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void _customDiago() async {
    var res = await showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return MyDiago("tips", "content", () {
            Navigator.pop(context, 'closed');
          });
        });

    print(res);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DiaGo colum'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: _alertDiago, child: const Text('alert')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: _simpleDialog, child: const Text('select diago')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: _bottomDiaog, child: const Text('bottom diago')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: _fluttertoast, child: const Text('fluttertoast')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: _customDiago, child: const Text('custom'))
          ],
        ),
      ),
    );
  }
}
