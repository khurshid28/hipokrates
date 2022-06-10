import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPasswordView extends StatefulWidget {
  const SignUpPasswordView({Key? key}) : super(key: key);

  @override
  State<SignUpPasswordView> createState() => _SignUpPasswordViewState();
}

class _SignUpPasswordViewState extends State<SignUpPasswordView> {
  @override
  Widget build(BuildContext context) {
    bool agreedToTerms = false;
    bool isError = false;
    return Scaffold(
      backgroundColor: const Color(0xff0C57AF),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xff0C57AF),
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
                    color: Color(0xff5596E2),
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
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Пароль",
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Container(
                    height: 40.0.h,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(244, 244, 244, 1),
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ),
                    ),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: (v) {
                        if (v.length < 6) {
                          isError = true;
                        } else {
                          isError = false;
                        }
                        setState(() {});
                      },
                      validator: (v) {
                        if (v!.length < 6) {
                          return "";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Введите пароль",
                        hintStyle: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(111, 118, 126, 1)),
                        contentPadding: const EdgeInsets.all(15),
                        errorStyle: const TextStyle(
                          height: 0,
                        ),
                        suffixIcon: isError
                            ? const Icon(
                                Icons.warning_rounded,
                                color: Colors.amber,
                              )
                            : null,
                        prefixIcon: isError
                            ? const Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              )
                            : Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: SvgPicture.asset(
                                  "assets/icons/password.svg",
                                ),
                              ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.0.h,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Подтвердите пароль",
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Container(
                    height: 40.0.h,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(244, 244, 244, 1),
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ),
                    ),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: (v) {
                        if (v.length < 6) {
                          isError = true;
                        } else {
                          isError = false;
                        }
                        setState(() {});
                      },
                      validator: (v) {
                        if (v!.length < 6) {
                          return "";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Введите пароль",
                        hintStyle: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(111, 118, 126, 1)),
                        contentPadding: const EdgeInsets.all(15),
                        errorStyle: const TextStyle(
                          height: 0,
                        ),
                        suffixIcon: isError
                            ? const Icon(
                                Icons.warning_rounded,
                                color: Colors.amber,
                              )
                            : null,
                        prefixIcon: isError
                            ? const Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              )
                            : Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: SvgPicture.asset(
                                  "assets/icons/password.svg",
                                ),
                              ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              14,
                            ),
                          ),
                        ),
                      ),
                    ),
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
                          "Отправить код повторно.",
                          style: GoogleFonts.nunito(
                              color: const Color(0xff0C57AF),
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 34.0.h,
                  ),
                  ElevatedButtonPress(
                    "Продолжить",
                    () {
                      Navigator.pushNamed(context, "/SignUpPersonView");
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
