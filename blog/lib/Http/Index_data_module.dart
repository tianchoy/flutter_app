class Example {
  int? code;
  String? message;
  List<Data>? data;

  Example({this.code, this.message, this.data});

  Example.fromJson(Map<String, dynamic> json) {
    code = json["code"];
    message = json["message"];
    data = json["data"] == null
        ? null
        : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["code"] = code;
    _data["message"] = message;
    if (data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Data {
  String? id;
  String? title;
  String? time;
  String? content;
  String? hits;
  String? artLove;

  Data({this.id, this.title, this.time, this.content, this.hits, this.artLove});

  Data.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    time = json["time"];
    content = json["content"];
    hits = json["hits"];
    artLove = json["art_love"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["title"] = title;
    _data["time"] = time;
    _data["content"] = content;
    _data["hits"] = hits;
    _data["art_love"] = artLove;
    return _data;
  }
}
