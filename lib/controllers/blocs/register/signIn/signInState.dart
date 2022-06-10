abstract class SignInState {}

class SignInSuperState extends SignInState {}

class SignInLoadingState extends SignInState {}

class SignInSuccessState extends SignInState {}

class SignInErrorState extends SignInState {
  String errorText;
  SignInErrorState({required this.errorText});
}
