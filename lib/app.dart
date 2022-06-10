import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hipokrates/views/register/ChooseLanguageView.dart';

import 'views/register/HomeRegisterView.dart';
import 'views/register/signInView.dart';
import 'views/register/signUpCodeView.dart';
import 'views/register/signUpDoneView.dart';
import 'views/register/signUpHospitalType.dart';
import 'views/register/signUpPasswordView.dart';
import 'views/register/signUpPersonTypeView.dart';
import 'views/register/signUpUniversityType.dart';
import 'views/register/signUpView.dart';


class HipokratesApp extends StatelessWidget {
  const HipokratesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/ChooseLanguageView",
      routes: {
        "/ChooseLanguageView":(context) =>const ChooseLanguageView(),
        "/HomeRegisterView":(context) =>const HomeRegisterView(),
        "/SignInView":(context) =>const SignInView(),
        "/SignUpCodeView":(context) =>const SignUpCodeView(),
        "/SignUpDoneView":(context) =>const SignUpDoneView(),
        "/SignUpHospitalView":(context) =>const SignUpHospitalView(),
        "/SignUpPasswordView":(context) =>const SignUpPasswordView(),
        "/SignUpPersonView":(context) =>const SignUpPersonView(),
        "/SignUpUniversityView":(context) =>const SignUpUniversityView(),
        "/SignUpView":(context) =>const SignUpView(),
       
      },
    );
      },
      child: const ChooseLanguageView(),
    );
  }
}

