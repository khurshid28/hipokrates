import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPersonView extends StatefulWidget {
  const SignUpPersonView({Key? key}) : super(key: key);

  @override
  State<SignUpPersonView> createState() => _SignUpPersonViewState();
}

class _SignUpPersonViewState extends State<SignUpPersonView> {
  @override
  Widget build(BuildContext context) {
    bool agreedToTerms = false;
    bool isError = false;
    return Scaffold(
      backgroundColor: Colors.blue,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 100.0.h,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.only(
            left: 16.0.w,
            right: 16.0.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Container(
                  height: 40.0.h,
                  width: 40.0.h,
                  padding: EdgeInsets.symmetric(
                    vertical: 14.0.w,
                    horizontal: 14.w,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(252, 252, 252, 1),
                    borderRadius: BorderRadius.circular(
                      10.0.h,
                    ),
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/back.svg",
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Container(
                height: 40.0.h,
                width: 40.0.h,
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.h),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(252, 252, 252, 1),
                  borderRadius: BorderRadius.circular(
                    10.0.h,
                  ),
                ),
                child: SvgPicture.asset("assets/icons/rus_flag.svg"),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.0),
                topLeft: Radius.circular(10.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0.w),
                    child: Text(
                      "Регистрация",
                      style: GoogleFonts.nunito(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 1.5,
                    color: Color.fromRGBO(212, 232, 255, 1),
                  ),
                  SizedBox(
                    height: 24.0.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Определите свою позицию.",
                          style: GoogleFonts.inter(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24.0.h,
                  ),
                  SizedBox(
                    height: 188.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 158.w,
                              height: 158.h,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/images/person1.png",
                                  ),
                                ),
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.blue, width: 2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.r),
                                ),
                              ),
                            ),
                            Text(
                              "Студент",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold, fontSize: 18.sp),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 158.w,
                              height: 158.h,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/images/person2.png",
                                  ),
                                ),
                                color: Colors.blue.withOpacity(0.3),
                                border:
                                    Border.all(color: Colors.blue, width: 2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.r),
                                ),
                              ),
                            ),
                            Text(
                              "Доктор",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold, fontSize: 18.sp),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24.0.h,
                  ),
                  ElevatedButtonPress(
                    "Продолжить",
                    () {
                      Navigator.pushNamed(context, "/SignUpUniversityView");
                    },
                    const Color.fromRGBO(12, 87, 175, 0.5),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget ElevatedButtonPress(
    String text,
    Function() press,
    Color? color,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: const Color.fromRGBO(12, 87, 175, 0.5),
        fixedSize: Size(
          327.w,
          48.h,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8.0,
          ),
        ),
        elevation: 0.0,
      ),
      onPressed: press,
      child: Text(
        text,
        style: GoogleFonts.nunito(
          fontWeight: FontWeight.w700,
          fontSize: 16.sp,
          color: Colors.white,
        ),
      ),
    );
  }
}
