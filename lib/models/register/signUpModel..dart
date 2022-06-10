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
  String? hospitalPosition;
  String? hospitalYili;

  fromJsonNameNumberDate(Map<String, dynamic> json) {
    name = json["name"];
    number = json["number"];
    date = json["date"];
  }
  fromJsonPassword(Map<String, dynamic> json) {
    password = json["password"];
  }
  fromJsonPerson(Map<String, dynamic> json) {
    person = json["person"];
  } 
  fromJsonUniversity(Map<String, dynamic> json) {
    universityUnvon = json["universityUnvon"];
    universityDaraja = json["universityDaraja"];
    universityYili = json["universityYili"];
  }
  fromJsonHospital(Map<String, dynamic> json) {

    hospitalUnvon = json["hospitalUnvon"];
    hospitalDaraja = json["hospitalDaraja"];
    hospitalPosition = json["hospitalPosition"];
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
        "hospitalPosition": hospitalPosition,
        "hospitalYili": hospitalYili,
      };
}
