class MyLanguage {
  static late Language data;
}

abstract class Language {}

class RegisterWords {
  ChooseLanguageWords chooseLanguage;
  RegisterHomeWords registerHome;
  SingInWords signin;
  SingUpWords signup;
  RegisterWords({
    required this.chooseLanguage,
    required this.registerHome,
    required this.signup,
    required this.signin,
  });
}

class RegisterHomeWords {
  String title;
  String subtitle;
  List<String> singing;
  RegisterHomeWords({
    required this.title,
    required this.subtitle,
    required this.singing,
  });
}

class ChooseLanguageWords {
  String title;
  String subtitle;
  String trealing;
  List<String> languages;
  ChooseLanguageWords({
    required this.title,
    required this.subtitle,
    required this.trealing,
    required this.languages,
    required String description,
  });
}

class SingInWords {
  String title;
  List<FieldWords> fields;
  String button;
  SingInWords({
    required this.title,
    required this.fields,
    required this.button,
  });
}

class FieldWords {
  String title;
  String label;
  FieldWords({
    required this.title,
    required this.label,
  });
}

class SingUpWords {}
