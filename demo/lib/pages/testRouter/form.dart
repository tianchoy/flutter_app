import 'package:flutter/material.dart';

// ignore: must_be_immutable
// class FormPage extends StatelessWidget {
//   late String title;
//   FormPage({Key? key, this.title = "form"}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: ListView(
//         children: const [
//           ListTile(
//             title: Text('表单内容'),
//           )
//         ],
//       ),
//     );
//   }
// }

class FormPage extends StatefulWidget {
  String title;
  FormPage({Key? key, required this.title}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<FormPage> createState() => _FormPageState(title: title);
}

class _FormPageState extends State<FormPage> {
  String title;
  _FormPageState({required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('back'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('表单内容'),
          )
        ],
      ),
    );
    ;
  }
}
