import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpUniversityView extends StatefulWidget {
  const SignUpUniversityView({Key? key}) : super(key: key);

  @override
  State<SignUpUniversityView> createState() => _SignUpUniversityViewState();
}

class _SignUpUniversityViewState extends State<SignUpUniversityView>
    with TickerProviderStateMixin {
  bool agreedToTerms = false;
  bool isError = false;
  bool isOpen = false;
  List<String> doctors = [
    "Бакалавр",
    "Магистратура",
  ];
  AnimationController? _animationController;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 200,
      ),
      lowerBound: 40.h,
      upperBound: doctors.length * 40.h + 5,
    )..addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                  width: 36.w,
                  height: 36.w,
                  padding: EdgeInsets.symmetric(
                    vertical: 10.w,
                    horizontal: 8.w,
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
                                  style: GoogleFonts.nunito(
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
                                  style: GoogleFonts.nunito(
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
                                  style: GoogleFonts.nunito(
                                    color: const Color(0xff6F767E),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  width: 36.w,
                  height: 36.w,
                  padding: EdgeInsets.all(8.75.w,),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(252, 252, 252, 1),
                    borderRadius: BorderRadius.circular(
                      10.0.h,
                    ),
                  ),
                  child: SvgPicture.asset("assets/icons/rus_flag.svg"),
                ),
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
                      "Название Университета",
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
                        hintText: "Впишите тег",
                        hintStyle: GoogleFonts.nunito(
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(111, 118, 126, 1),
                        ),
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
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Степень обучения",
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  AnimatedBuilder(
                      animation: _animationController!,
                      builder: (context, snapshot) {
                        return Container(
                          height: _animationController!.value,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(244, 244, 244, 1),
                            borderRadius: BorderRadius.circular(
                              8.0,
                            ),
                          ),
                          child: Stack(
                            children: [
                              ...List.generate(
                                doctors.length,
                                (index) => Positioned(
                                  top: index * 40.h,
                                  left: 0,
                                  right: 0,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 40.h,
                                        child: InkWell(
                                          onTap: () {
                                            print(doctors[index]);

                                            if (_animationController!.status ==
                                                AnimationStatus.completed) {
                                              String selectedData =
                                                  doctors[index];
                                              doctors.removeAt(index);
                                              doctors =
                                                  [selectedData] + doctors;
                                              isOpen = false;
                                              setState(() {});
                                              _animationController!.reverse();
                                            } else if (_animationController!
                                                    .status ==
                                                AnimationStatus.dismissed) {
                                              isOpen = true;
                                              setState(() {});
                                              _animationController!.forward();
                                            }
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 15.w, right: 8.w),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  doctors[index],
                                                  style: GoogleFonts.nunito(
                                                    fontWeight: FontWeight.w600,
                                                    color: const Color.fromRGBO(
                                                        111, 118, 126, 1),
                                                  ),
                                                ),
                                                if (index == 0)
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10.w),
                                                    child: Transform.rotate(
                                                      angle: isOpen
                                                          ? pi / 2
                                                          : -pi / 2,
                                                      child: const Icon(
                                                        Icons
                                                            .arrow_back_ios_new_rounded,
                                                        color: Color.fromRGBO(
                                                            111, 118, 126, 1),
                                                      ),
                                                    ),
                                                  )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (index == 0)
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 15.w,
                                            right: 8.w,
                                          ),
                                          child: const Divider(),
                                        )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          //  TextFormField(
                          //   autovalidateMode: AutovalidateMode.onUserInteraction,
                          //   onChanged: (v) {
                          //     if (v.length < 6) {
                          //       isError = true;
                          //     } else {
                          //       isError = false;
                          //     }
                          //     setState(() {});
                          //   },
                          //   validator: (v) {
                          //     if (v!.length < 6) {
                          //       return "";
                          //     }
                          //     return null;
                          //   },
                          //   decoration: InputDecoration(
                          //     hintText: "Степень",
                          //     hintStyle: GoogleFonts.nunito(
                          //         fontWeight: FontWeight.w600,
                          //         color: const Color.fromRGBO(111, 118, 126, 1)),
                          //     contentPadding: const EdgeInsets.all(15),
                          //     errorStyle: const TextStyle(
                          //       height: 0,
                          //     ),
                          //     suffixIcon: isError
                          //         ? const Icon(
                          //             Icons.warning_rounded,
                          //             color: Colors.amber,
                          //           )
                          //         : null,
                          //     border: const OutlineInputBorder(
                          //       borderSide: BorderSide.none,
                          //       borderRadius: BorderRadius.all(
                          //         Radius.circular(
                          //           14,
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        );
                      }),
                  SizedBox(
                    height: 24.h,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Год выпуска",
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
                    width: MediaQuery.of(context).size.width - 48.w,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(244, 244, 244, 1),
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width:
                              MediaQuery.of(context).size.width - 48.w - 40.h,
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
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
                              hintText: "Год выпуска",
                              hintStyle: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w600,
                                  color:
                                      const Color.fromRGBO(111, 118, 126, 1)),
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
                        GestureDetector(
                          onTap: () {
                            showCupertinoModalPopup(
                                context: context,
                                builder: (_) => SizedBox(
                                      height: 280.h,
                                      child: Scaffold(
                                        body: Container(
                                          height: 280.h,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(14.r),
                                              topRight: Radius.circular(14.r),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              SizedBox(
                                                height: 180.h,
                                                child: CupertinoDatePicker(
                                                  mode: CupertinoDatePickerMode
                                                      .date,
                                                  minimumYear: 1950,
                                                  maximumYear:
                                                      DateTime.now().year - 16,
                                                  initialDateTime:
                                                      DateTime(2000),
                                                  dateOrder:
                                                      DatePickerDateOrder.dmy,
                                                  onDateTimeChanged: (val) {},
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 20.w,
                                                ),
                                                child: Divider(
                                                  color:
                                                      const Color(0xff5596E2),
                                                  thickness: 1.4.h,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 60.h,
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 28.w,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                            horizontal: 31.5.w,
                                                            vertical: 8.h,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                                  border: Border.all(
                                                                      color: const Color(
                                                                          0xff5596E2)),
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    12.r,
                                                                  )),
                                                          child: Text(
                                                            "Отменить",
                                                            style: GoogleFonts
                                                                .nunito(
                                                              color: const Color(
                                                                  0xff5596E2),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                            horizontal: 19.5.w,
                                                            vertical: 8.h,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                                  color: const Color(
                                                                      0xff5596E2),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    12.r,
                                                                  )),
                                                          child: Text(
                                                            "Подтвердить",
                                                            style: GoogleFonts
                                                                .nunito(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ));
                          },
                          child: Container(
                            height: 40.h,
                            width: 40.h,
                            padding: EdgeInsets.all(10.h),
                            decoration: const BoxDecoration(
                              color: Color(0xff0C57AF),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                            // alignment: Alignment.center,
                            child:
                                SvgPicture.asset("assets/icons/calendar.svg"),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.0.h,
                  ),
                  SizedBox(
                    height: 34.0.h,
                  ),
                  ElevatedButtonPress(
                    "Продолжить",
                    () {
                      Navigator.pushNamed(context, "/SignUpHospitalView");
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
