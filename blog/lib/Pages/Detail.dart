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
  var getArt = {};
  artDetail() {
    String url = 'getArtDetail.php?id=' + Get.arguments["id"];
    getDetail(url).then((res) {
      if (res != Null) {
        setState(() {
          getArt = res;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    artDetail();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          getArt["title"].toString(),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: RichText(
              text: HTML.toTextSpan(
                context,
                getArt["content"].toString(),
                defaultTextStyle: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 12,
                    decoration: TextDecoration.none
                    // etc etc
                    ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              children: <Widget>[
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.red,
                ),
                const Spacer(
                  flex: 1,
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.green,
                ),
                const Spacer(
                  flex: 1,
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.yellow,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
