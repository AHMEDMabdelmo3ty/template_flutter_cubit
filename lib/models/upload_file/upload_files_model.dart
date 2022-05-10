class UploadFilesModel {
  String? response;

  UploadFilesModel({this.response});

  UploadFilesModel.fromJson(Map<String, dynamic> json) {
    response = json['response'];
  }
}
