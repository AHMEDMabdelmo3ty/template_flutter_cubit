// ignore_for_file: unnecessary_new, unnecessary_this

class RequestTokenModel {
  String? token;

  RequestTokenModel({this.token});

  RequestTokenModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    return data;
  }
}
