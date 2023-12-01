import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskone/bloc/login.state.dart';

class LoginCubit extends Cubit<LoginState>{
  LoginCubit(super.initialState);

  static LoginCubit get(context)=>BlocProvider.of(context);

    loginPress(){
      print('login now');

    }
    signupPress(){
      print('sign up now');
    }
    NewPassword(){
      print('new pass now');
    //  emit(NewpassState());
    }
    SignInWithEamilandPass()async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: "barry.allen@example.com",
          password: "SuperSecretPassword!"
      );

      emit(SuccessState());
    }
    SignupWithEmailandpass()async {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: "barry.allen@example.com",
            password: "SuperSecretPassword!"
        );
      } on Exception catch (e) {
          log(e as String);
      }
    }

}

//  Stream<LoginState> mapEventToState(LoginCubit event) async* {
//     if (event == LoginCubit) {
//    yield   SuccessState();
//       try {
//         await Future.delayed(Duration(seconds: 2));
//         yield  loadingState();
//       } catch (_) {
//         yield FailState();
//       }
//     }
//   }