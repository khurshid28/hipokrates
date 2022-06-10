class SignInModel {
  late String login;
  late String password;
  SignInModel.fromJson(Map<String, dynamic> json) {
    login = json["login"];
    password =json["password"];
  }

  Map<String, dynamic> toJson() => {"login": login, "password": password};
}
