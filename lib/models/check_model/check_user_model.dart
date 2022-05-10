class CheckModel {
  bool? status;
  String? message;
  String? id;
  String? mobile;
  String? cardnumber;
  String? password;

  CheckModel(
      {this.status,
      this.message,
      this.id,
      this.mobile,
      this.cardnumber,
      this.password});

  CheckModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    id = json['id'];
    mobile = json['mobile'];
    cardnumber = json['cardnumber'];
    password = json['password'];
  }
}
