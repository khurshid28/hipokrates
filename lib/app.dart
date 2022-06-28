import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'exportpaths.dart';

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
            "/ChooseLanguageView": (context) => const ChooseLanguageView(),
            "/HomeRegisterView": (context) => const HomeRegisterView(),
            //auth

            //signIn
            "/SignInView": (context) => const SignInView(),

            //signUp
            "/SignUpView": (context) => const SignUpView(),
            "/SignUpCodeView": (context) => const SignUpCodeView(),
            "/SignUpPasswordView": (context) => const SignUpPasswordView(),
            "/SignUpPersonView": (context) => const SignUpPersonView(),
            "/SignUpUniversityView": (context) => const SignUpUniversityView(),
            "/SignUpHospitalView": (context) => const SignUpHospitalView(),

            "/SignUpDoneView": (context) => const SignUpDoneView(),

            //main
            "/MainView": (context) => const MainView(),

            //childrens
            "/HomeView": (context) => const HomeView(),

            //profileDetails
            "/ProfileView": (context) => const ProfileView(),
            "/SettingsView": (context) => const SettingsView(),

            "/YazikView": (context) => const YazikView(),
            "/NotificationView": (context) => const NotificationView(),
            "/LockView": (context) => const LockView(),
            "/ChangeLoginView": (context) => const ChangeLoginView(),

            // aboutMe
            "/BioView": (context) => const BioView(),
            "/BioEditView": (context) => const BioEditView(),
            "/ExperienceView": (context) => const ExperienceView(),
            "/StudyView": (context) => const StudyView(),
            "/CertificateView": (context) => const CertificateView(),
            "/ArticlesView": (context) => const ArticlesView(),
            "/ArticlesReadView": (context) => const ArticlesReadView(),
            "/AnswersView": (context) => const AnswersView(),

            //Recipes
            "/RecipeSubPage": (context) => const RecipeSubPage(),
            "/RecipeSubDetailPage": (context) => const RecipeSubDetailPage(),

            //Diseases
            "/DiseasesDetailPage": (context) => const DiseasesDetailPage(),

            //Chats
            "/ChatsView": (context) => const ChatsView(),
          },
        );
      },
      child: const ChooseLanguageView(),
    );
  }
}
