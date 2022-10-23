import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Config/Request.dart';
import 'package:simple_html_css/simple_html_css.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List getArt = [];
  String url = 'getArtDetail.php?id=';
  @override
  initState() {
    super.initState();
    print(Get.arguments["id"]);

    getData(url).then((res) => {getArt = res['data'].toList()});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('detail'),
      ),
      body: Center(
        child: Column(
          children: const [
            Text('data'),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
