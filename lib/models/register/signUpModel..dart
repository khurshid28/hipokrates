class SignUpModel {
  String? name;
  String? number;
  String? date;
  String? password;
  String? person;

  String? universityUnvon;
  String? universityDaraja;
  String? universityYili;

  String? hospitalUnvon;
  String? hospitalDaraja;
  String? hospitalposition;
  String? hospitalYili;

  SignUpModel.fromJsonNameNumberDate(Map<String, dynamic> json) {
    name = json["name"];
    number = json["number"];
    date = json["date"];
  }
  SignUpModel.fromJsonPassword(Map<String, dynamic> json) {
    password = json["password"];
  }
  SignUpModel.fromJsonPerson(Map<String, dynamic> json) {
    person = json["person"];
  } 
  SignUpModel.fromJsonUniversity(Map<String, dynamic> json) {
    universityUnvon = json["universityUnvon"];
    universityDaraja = json["universityDaraja"];
    universityYili = json["universityYili"];
  }
  SignUpModel.fromJsonHospital(Map<String, dynamic> json) {

    hospitalUnvon = json["hospitalUnvon"];
    hospitalDaraja = json["hospitalDaraja"];
    hospitalposition = json["hospitalPosition"];
    hospitalYili = json["hospitalYili"];
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "number": number,
        "date": date,
        "password": password,
        "person": person,
        "universityUnvon": universityUnvon,
        "universityDaraja": universityDaraja,
        "universityYili": universityYili,
        "hospitalUnvon": hospitalUnvon,
        "hospitalDaraja": hospitalDaraja,
        "hospitalposition": hospitalposition,
        "hospitalYili": hospitalYili,
      };
}
