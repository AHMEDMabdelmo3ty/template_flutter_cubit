class UserHireModel {
  bool? status;
  String? message;
  String? mobile;

  UserHireModel({this.status, this.message, this.mobile});

  UserHireModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    mobile = json['mobile'];
  }
}
