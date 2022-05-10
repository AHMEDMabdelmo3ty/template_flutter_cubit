class LoginModel {
  bool? status;
  String? message;
  String? id;
  String? mobile;
  String? password;

  LoginModel({this.status, this.message, this.id, this.mobile, this.password});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    id = json['id'];
    mobile = json['mobile'];
    password = json['password'];
  }
}
