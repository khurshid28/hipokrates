abstract class SignUpState {}

class SignUpSuperState extends SignUpState {}

class SignUpLoadingState extends SignUpState {}

class SignUpSuccessState extends SignUpState {}

class SignUpErrorState extends SignUpState {
  String errorText;
  SignUpErrorState({required this.errorText});
}
