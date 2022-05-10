class JobsModel {
  String? id;
  String? nameAr;
  String? nameEg;
  String? typeAr;
  String? typeEg;
  String? customizeAr;
  String? customizeEg;
  String? image;

  JobsModel(
      {this.id,
      this.nameAr,
      this.nameEg,
      this.typeAr,
      this.typeEg,
      this.customizeAr,
      this.customizeEg,
      this.image});

  JobsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameAr = json['name_ar'];
    nameEg = json['name_eg'];
    typeAr = json['type_ar'];
    typeEg = json['type_eg'];
    customizeAr = json['customize_ar'];
    customizeEg = json['customize_eg'];
    image = json['image'];
  }
}
