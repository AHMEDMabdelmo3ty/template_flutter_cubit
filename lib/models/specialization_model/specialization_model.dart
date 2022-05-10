class SpecializationModel {
  String? id;
  String? nameAr;
  String? nameEg;
  String? idOccupational;

  SpecializationModel({this.id, this.nameAr, this.nameEg, this.idOccupational});

  SpecializationModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameAr = json['name_ar'];
    nameEg = json['name_eg'];
    idOccupational = json['id_occupational'];
  }
}
