class UserProfile {
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

  UserProfile(
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
      this.idUser});

  UserProfile.fromJson(Map<String, dynamic> json) {
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
  }
}
