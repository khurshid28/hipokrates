import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

class LockView extends StatefulWidget {
  const LockView({Key? key}) : super(key: key);

  @override
  State<LockView> createState() => _LockViewState();
}

class _LockViewState extends State<LockView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3.0,
        shadowColor: Colors.grey.shade200,
        toolbarHeight: 72.0.h,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
              15.0,
            ),
            bottomRight: Radius.circular(
              15.0,
            ),
          ),
        ),
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
                  width: 36.w,
                  height: 36.w,
                  padding: EdgeInsets.symmetric(
                    vertical: 10.w,
                    horizontal: 8.w,
                  ),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xff5596E2), width: 2),
                    color: const Color.fromRGBO(252, 252, 252, 1),
                    borderRadius: BorderRadius.circular(
                      10.0.h,
                    ),
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/back.svg",
                    color: const Color(0xff5596E2),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Text(
                "Настройки",
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 36.w,
                height: 36.w,
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  Text(
                    "Конфидециальность",
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff050505),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                width: 327.w,
                height: 140.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    8.r,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 12.r,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        Navigator.pushNamed(context, "/ChangeLoginView");
                      },
                      child: Container(
                        height: 46.h,
                        width: 327.w,
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.h,
                          vertical: 12.h,
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1.h,
                                    color: const Color(0xffF4F4F4)))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Изменение логина",
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff050505)),
                            ),
                            SizedBox(
                              width: 20.h,
                              height: 20.h,
                              child: SvgPicture.asset(
                                "assets/icons/forward.svg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 46.h,
                      width: 327.w,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 12.h,
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 1.h, color: const Color(0xffF4F4F4)))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Изменение пароля",
                            style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff050505)),
                          ),
                          SizedBox(
                            width: 20.h,
                            height: 20.h,
                            child: SvgPicture.asset(
                              "assets/icons/forward.svg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {},
                      child: Container(
                        height: 46.h,
                        width: 327.w,
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                          vertical: 12.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Отслеживание",
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff050505)),
                            ),
                            SizedBox(
                              width: 48.w,
                              child: FlutterSwitch(
                                value: true,
                                onToggle: (v) {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 36.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
