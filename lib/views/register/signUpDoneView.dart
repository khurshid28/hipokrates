import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpDoneView extends StatefulWidget {
  const SignUpDoneView({Key? key}) : super(key: key);

  @override
  State<SignUpDoneView> createState() => _SignUpDoneViewState();
}

class _SignUpDoneViewState extends State<SignUpDoneView> {
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
              left: 32.w,
              right: 32.w,
              child: SizedBox(
                width: 312.w,
                height: 276.h,
                child: Image.asset(
                  "assets/images/doctor3.png",
                ),
              ),
            ),
            Positioned(
              left: 24.w,
              right: 24.w,
              top: 357.h,
              child: SizedBox(
                width: 327.w,
                child: Column(
                  children: [
                    Text(
                      "Давайте начнем",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 26.sp),
                    ),
                    Text(
                      "путешествие!",
                      style: GoogleFonts.inter(
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
              top: 461.h,
              child: SizedBox(
                width: 327.w,
                child: Column(
                  children: [
                    Text(
                      "Если у Вас будут иметься вопросы или",
                      style: GoogleFonts.inter(
                          color: Colors.black, fontSize: 14.sp),
                    ),
                    Text(
                      "предложения, просим писать в службу",
                      style: GoogleFonts.inter(
                          color: Colors.black, fontSize: 14.sp),
                    ),
                    Text(
                      "поддержки и мы всегда будем Вам рады!",
                      style: GoogleFonts.inter(
                          color: Colors.black, fontSize: 14.sp),
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
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.r),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Начать свой путь",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
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
                      width: 40.h,
                      height: 40.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.r),
                        ),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/back.svg",
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Container(
                    width: 40.h,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    ),
                    alignment: Alignment.center,
                    child:
                      SvgPicture.asset("assets/icons/rus_flag.svg"),
                    //  Container(
                    //   width: 28.w,
                    //   height: 28.w,
                    //   decoration: BoxDecoration(
                        
                    //   image:const DecorationImage(image:,),
                    //   borderRadius: BorderRadius.all(Radius.circular(14.w)),
                    // ),
                     
                    // ),
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
