class OccupationModel {
  String? id;
  String? nameAr;
  String? nameEg;

  OccupationModel({this.id, this.nameAr, this.nameEg});

  OccupationModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameAr = json['name_ar'];
    nameEg = json['name_eg'];
  }
}
