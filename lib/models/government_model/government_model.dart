class GovernmentModel {
  String? id;
  String? nameAr;
  String? nameEg;

  GovernmentModel({this.id, this.nameAr, this.nameEg});

  GovernmentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameAr = json['name_ar'];
    nameEg = json['name_eg'];
  }
}
