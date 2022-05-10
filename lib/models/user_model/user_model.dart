class UserModel {
  String? id;
  String? firstname;
  String? secondname;
  String? age;
  String? mobilenumber;
  String? anothermobilenumber;
  String? occupation;
  String? specialization;
  String? numberofyearsofexperience;
  String? type;
  String? email;
  String? date;
  String? time;
  String? maritalstatus;
  String? status;
  String? address;
  String? governor;
  String? idUser;
  List<SubCats>? subCats;

  UserModel(
      {this.id,
      this.firstname,
      this.secondname,
      this.age,
      this.mobilenumber,
      this.anothermobilenumber,
      this.occupation,
      this.specialization,
      this.numberofyearsofexperience,
      this.type,
      this.email,
      this.date,
      this.time,
      this.maritalstatus,
      this.status,
      this.address,
      this.governor,
      this.idUser,
      required this.subCats});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstname = json['firstname'];
    secondname = json['secondname'];
    age = json['age'];
    mobilenumber = json['mobilenumber'];
    anothermobilenumber = json['anothermobilenumber'];
    occupation = json['occupation'];
    specialization = json['specialization'];
    numberofyearsofexperience = json['numberofyearsofexperience'];
    type = json['type'];
    email = json['email'];
    date = json['date'];
    time = json['time'];
    maritalstatus = json['maritalstatus'];
    status = json['status'];
    address = json['address'];
    governor = json['governor'];
    idUser = json['id_user'];
    if (json['subCats'] != null) {
      subCats = <SubCats>[];
      json['subCats'].forEach((v) {
        subCats?.add(SubCats.fromJson(v));
      });
    }
  }
}

class SubCats {
  String? id;
  String? image;
  String? pdf;
  String? idUser;

  SubCats({this.id, this.image, this.pdf, this.idUser});

  SubCats.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    pdf = json['pdf'];
    idUser = json['id_user'];
  }
}
