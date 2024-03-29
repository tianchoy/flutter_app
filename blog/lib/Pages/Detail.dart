import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Config/Request.dart';
import 'package:simple_html_css/simple_html_css.dart';
import 'components/commits.dart';
import 'components/commitsList.dart';

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
      print(res);
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
                Text(getArt["time"].toString()),
                const Spacer(
                  flex: 1,
                ),
                Text(getArt["hits"].toString()),
                const Spacer(
                  flex: 1,
                ),
                Text(getArt["art_love"].toString()),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Commits(),
          ),
          const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: CommitsList())
        ],
      ),
    );
  }
}
