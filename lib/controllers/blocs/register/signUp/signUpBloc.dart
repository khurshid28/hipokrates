import 'package:flutter_bloc/flutter_bloc.dart';

import 'signUpState.dart';

class SignUpBloc extends Cubit<SignUpState> {
  SignUpBloc() : super(SignUpSuperState());
  done() {
    emit(SignUpLoadingState());
    if (2==4) {
      emit(SignUpSuccessState());
    }else{
      emit(SignUpErrorState(errorText: "Error"));
    }
  }
}
