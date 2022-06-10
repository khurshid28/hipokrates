import 'package:flutter_bloc/flutter_bloc.dart';
import 'signInState.dart';


class SignInBloc extends Cubit<SignInState> {
  SignInBloc() : super(SignInSuperState());
  done() {
    emit(SignInLoadingState());
    if (2==4) {
      emit(SignInLoadingState());
    }else{
      emit(SignInErrorState(errorText: "Error"));
    }
  }
}
