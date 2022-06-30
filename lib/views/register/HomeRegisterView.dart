import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeRegisterView extends StatefulWidget {
  const HomeRegisterView({Key? key}) : super(key: key);

  @override
  State<HomeRegisterView> createState() => _HomeRegisterViewState();
}

class _HomeRegisterViewState extends State<HomeRegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              // top: 19.h,
              left: 0,
              right: 0,
              child: SizedBox(
                width: 312.w,
                height: 276.h,
                child: Image.asset(
                  "assets/images/blue4.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 354.h,
              left: -9.w,
              child: SizedBox(
                width: 142.w,
                height: 174.h,
                child: Image.asset("assets/images/blue2.png"),
              ),
            ),
            Positioned(
              top: 477.h,
              left: 260.w,
              child: SizedBox(
                width: 142.w,
                height: 174.h,
                child: Image.asset("assets/images/blue3.png"),
              ),
            ),
            Positioned(
              top: 60.h,
              left: 37.w,
              right: 37.w,
              child: SizedBox(
                width: 312.w,
                height: 276.h,
                child: Image.asset(
                  "assets/images/doctor2.png",
                ),
              ),
            ),
            Positioned(
              left: 24.w,
              right: 24.w,
              top: 397.h,
              child: SizedBox(
                width: 327.w,
                child: Column(
                  children: [
                    Text(
                      "Что по поводу аккаунта?",
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 22.sp),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 24.w,
              right: 24.w,
              top: 461.h,
              child: SizedBox(
                width: 327.w,
                child: Column(
                  children: [
                    Text(
                      "У вас уже имеется свой аккаунт или вы",
                      style: TextStyle(
                          fontFamily: "Nunito",
                          color: Colors.black,
                          fontSize: 14.sp),
                    ),
                    Text(
                      "впервые используете это приложение?",
                      style: TextStyle(
                          fontFamily: "Nunito",
                          color: Colors.black,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 23.5.w,
              right: 23.5.w,
              top: 521.h,
              child: Container(
                width: 328.w,
                height: 42.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.r),
                  ),
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/SignInView");
                      },
                      child: Container(
                        width: 164.w,
                        height: 42.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xff0C57AF),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.r),
                          ),
                        ),
                        child: Text(
                          "Вход",
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/SignUpView");
                      },
                      child: Container(
                        width: 164.w,
                        height: 42.h,
                        alignment: Alignment.center,
                        child: Text(
                          "Регистрация",
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 16,
                            color: const Color(0xff0C57AF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 24.w,
              right: 24.w,
              top: 32.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 36.w,
                      height: 36.w,
                      padding: EdgeInsets.symmetric(
                        vertical: 10.w,
                        horizontal: 8.w,
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: const Color(0xff5596E2), width: 2),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.r),
                        ),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/back.svg",
                        color: const Color(0xff5596E2),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.r),
                              ),
                            ),
                            content: SizedBox(
                              width: 200.w,
                              height: 126.h,
                              child: Column(
                                children: [
                                  ListTile(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    leading: Container(
                                      width: 40.w,
                                      height: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          20.w,
                                        ),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/flags/rus_png.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    title: Text(
                                      "Русский",
                                      style: TextStyle(
                                        fontFamily: "Nunito",
                                        color: const Color(0xff6F767E),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    leading: Container(
                                      width: 40.w,
                                      height: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          20.w,
                                        ),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/flags/uz_png.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    title: Text(
                                      "Узбекский",
                                      style: TextStyle(
                                        fontFamily: "Nunito",
                                        color: const Color(0xff6F767E),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    leading: Container(
                                      width: 40.w,
                                      height: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          20.w,
                                        ),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            "assets/images/flags/en_png.png",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    title: Text(
                                      "Английский",
                                      style: TextStyle(
                                        fontFamily: "Nunito",
                                        color: const Color(0xff6F767E),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // actions: [
                            //   TextButton(
                            //     onPressed: () {
                            //       Navigator.of(context).pop();
                            //     },
                            //     child: Text('YES', style: TextStyle(color: Colors.black),),
                            //   ),
                            //   TextButton(
                            //     onPressed: () {
                            //       Navigator.of(context).pop();
                            //     },
                            //     child: Text('NO', style: TextStyle(color: Colors.black),),
                            //   ),
                            // ],
                          );
                        },
                      );
                    },
                    child: Container(
                      width: 36.w,
                      height: 36.w,
                      padding: EdgeInsets.all(
                        8.75.w,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: const Color(0xff5596E2), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                      ),
                      alignment: Alignment.center,
                      child: SvgPicture.asset("assets/icons/rus_flag.svg"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
