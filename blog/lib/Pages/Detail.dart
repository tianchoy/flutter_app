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
  // ignore: prefer_typing_uninitialized_variables
  var getArt;
  @override
  void initState() {
    super.initState();
    // ignore: prefer_interpolation_to_compose_strings
    String url = 'getArtDetail.php?id=' + Get.arguments["id"];
    getDetail(url).then((res) {
      setState(() {
        getArt = res;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getArt["title"]),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: RichText(
              text: HTML.toTextSpan(
                context,
                getArt["content"],
                defaultTextStyle: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 12,
                  // etc etc
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
