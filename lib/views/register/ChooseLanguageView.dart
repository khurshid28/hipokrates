import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseLanguageView extends StatefulWidget {
  const ChooseLanguageView({Key? key}) : super(key: key);

  @override
  State<ChooseLanguageView> createState() => _ChooseLanguageViewState();
}

class _ChooseLanguageViewState extends State<ChooseLanguageView> {
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
              top: 19.h,
              left: 41.w,
              child: SizedBox(
                width: 312.w,
                height: 276.h,
                child: Image.asset(
                  "assets/images/doctor1.png",
                ),
              ),
            ),
            Positioned(
              left: 24.w,
              right: 24.w,
              top: 277.h,
              child: SizedBox(
                width: 327.w,
                child: Column(
                  children: [
                    Text(
                      "Добро пожаловать",
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 26.sp),
                    ),
                    Text(
                      "в Гиппократ",
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 26.sp),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 24.w,
              right: 24.w,
              top: 377.h,
              child: SizedBox(
                width: 327.w,
                child: Column(
                  children: [
                    Text(
                      "Мы поможем Вам найти лучший способ",
                      style: TextStyle(
                          fontFamily: "Nunito",
                          color: Colors.black,
                          fontSize: 14.sp),
                    ),
                    Text(
                      "для предоставления помощи пациентам!",
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
              left: 24.w,
              right: 24.w,
              top: 486.h,
              child: SizedBox(
                width: 327.w,
                child: Column(
                  children: [
                    Text(
                      "Для начала выберите язык пользования.",
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
              left: 24.w,
              right: 24.w,
              top: 521.h,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/HomeRegisterView");
                },
                child: Container(
                  width: 327.w,
                  height: 42.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.r),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 109.w,
                        height: 42.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xff0C57AF),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.r),
                          ),
                        ),
                        child: Text(
                          "Русский",
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        width: 109.w,
                        height: 42.h,
                        alignment: Alignment.center,
                        child: Text(
                          "Узбекский",
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 16,
                            color: Color(0xff0C57AF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        width: 109.w,
                        height: 42.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.r),
                          ),
                        ),
                        child: Text(
                          "Английский",
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 16,
                            color: Color(0xff0C57AF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
