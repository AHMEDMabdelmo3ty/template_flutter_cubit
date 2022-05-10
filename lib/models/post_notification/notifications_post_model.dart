class NotificationPostModel {
  bool? status;
  String? message;
  String? iduser;

  NotificationPostModel({this.status, this.message, this.iduser});

  NotificationPostModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    iduser = json['iduser'];
  }
}
