// ignore_for_file: camel_case_types

class userImageModel {
  String? id;
  String? image;
  String? pdf;
  String? idUser;

  userImageModel({this.id, this.image, this.pdf, this.idUser});

  userImageModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    pdf = json['pdf'];
    idUser = json['id_user'];
  }
}
