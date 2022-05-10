class TermsAndConditionsModel {
  String? id;
  String? nameAr;
  String? nameEg;

  TermsAndConditionsModel({this.id, this.nameAr, this.nameEg});

  TermsAndConditionsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameAr = json['name_ar'];
    nameEg = json['name_eg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name_ar'] = nameAr;
    data['name_eg'] = nameEg;
    return data;
  }
}
