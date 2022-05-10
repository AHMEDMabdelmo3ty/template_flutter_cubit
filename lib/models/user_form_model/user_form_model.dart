class UserFormModel {
  bool? status;
  String? message;
  String? id;
  String? idUser;

  UserFormModel({this.status, this.message, this.id, this.idUser});

  UserFormModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    id = json['id'];
    idUser = json['id_user'];
  }
}
