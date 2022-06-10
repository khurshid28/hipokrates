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
   
    return  Scaffold(
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
              top: 40.h,
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
              top: 357.h,
              child: SizedBox(
                width: 327.w,
                child: Column(
                  children: [
                    Text(
                      "Что по поводу аккаунта?",
                      style: GoogleFonts.inter(
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
                      style: GoogleFonts.inter(
                          color: Colors.black, fontSize: 14.sp),
                    ),
                     Text(
                      "впервые используете это приложение?",
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
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/HomeRegisterView");
                },
                child: Container(
                  width: 328.w,
                  height: 42.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.r),
                    ),
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, "/SignInView");
                             
                        },
                        child: Container(
                          width: 164.w,
                          height: 42.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.r),
                            ),
                          ),
                          child: Text(
                            "Вход",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, "/SignUpView");
                             
                        },
                        child: Container(
                          width: 164.w,
                          height: 42.h,
                          alignment: Alignment.center,
                          child: Text(
                            "Регистрация",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                     
                    ],
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
