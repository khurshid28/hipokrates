import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BioView extends StatefulWidget {
  const BioView({Key? key}) : super(key: key);

  @override
  State<BioView> createState() => _BioViewState();
}

class _BioViewState extends State<BioView> {
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
                    color: Color(0xff5596E2),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Text(
                "??????????????????",
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              // Container()
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/BioEditView");
                },
                child: Container(
                  width: 36.w,
                  height: 36.w,
                  padding: EdgeInsets.symmetric(
                    vertical: 6.w,
                    horizontal: 6.w,
                  ),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xff5596E2), width: 2),
                    color: const Color.fromRGBO(252, 252, 252, 1),
                    borderRadius: BorderRadius.circular(
                      10.0.h,
                    ),
                  ),
                  child: SvgPicture.asset("assets/icons/edit.svg"),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 108.0.h,
                    width: 108.0.h,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/profile.png"),
                      ),
                      borderRadius: BorderRadius.circular(
                        10.0.h,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 327.w,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5.r),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "?????????????? ??????????????????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff0C57AF),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "?????????????? ?????????????? ???? ?????? ?? ??????????????, ?????? ?????? ?????????????? ?????????? ?? ?????????????????? ?????????? ?? ?? ????????????????????.",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff050505),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 327.w,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5.r),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "???????????? ??????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff0C57AF),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "?????????????? ???????????? ????????????????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff050505),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 327.w,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5.r),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "???????? ????????????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff0C57AF),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "13 ??????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff050505),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 327.w,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5.r),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "???????? ????????????????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff0C57AF),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "12.02.2022",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff050505),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 327.w,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5.r),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "?????????? ????????????????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff0C57AF),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "+998 93 234 43 23",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff050505),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 327.w,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5.r),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "?????????????????????????????????? ????????????????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff0C57AF),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "ID 232342342",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff050505),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 327.w,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5.r),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "?????? ??????????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff0C57AF),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "?????????????????????? ??????????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff050505),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 327.w,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5.r),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "??????????????????????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff0C57AF),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "??????????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff050505),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8.h,
                  horizontal: 24.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 155.5.w,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 5.r,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "????????????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff0C57AF),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "????????????????????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff050505),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 155.5.w,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5.r),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "??????????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff0C57AF),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "??????????????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff050505),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8.h,
                  horizontal: 24.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 155.5.w,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 5.r,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "??????????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff0C57AF),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "??????????????????????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff050505),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 155.5.w,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5.r),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "??????????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff0C57AF),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "??????????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff050505),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8.h,
                  horizontal: 24.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 155.5.w,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5.r),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "??????????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff0C57AF),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "12",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff050505),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 155.5.w,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5.r),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "??????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff0C57AF),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "12",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff050505),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
