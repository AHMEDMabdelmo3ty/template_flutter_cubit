class GetNotificationsModel {
  String? id;
  String? iduser;
  String? message;

  GetNotificationsModel({this.id, this.iduser, this.message});

  GetNotificationsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    iduser = json['iduser'];
    message = json['message'];
  }
}
