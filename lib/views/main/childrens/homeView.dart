import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3.0,
        shadowColor: Colors.grey.shade200,
        toolbarHeight: 72.0.h,
        backgroundColor: Colors.white,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Доброе утро,",
                    style: GoogleFonts.nunito(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(
                        0xff6F767E,
                      ),
                    ),
                  ),
                  Text(
                    "Азизбек Азизов",
                    style: GoogleFonts.nunito(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  Navigator.pushNamed(context, "/ProfileView");
                },
                child: Container(
                  height: 40.0.h,
                  width: 40.0.h,
                  padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.h),
                  decoration: BoxDecoration(
                    // border: Border.all(color: const Color(0xff5596E2), width: 2),
                    // color: const Color.fromRGBO(252, 252, 252, 1),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/profile.png"),
                    ),
                    borderRadius: BorderRadius.circular(
                      10.0.h,
                    ),
                  ),
                ),
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
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 4.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 10.h,
                        ),
                        width: MediaQuery.of(context).size.width / 2 - 34.w,
                        height: 220.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14.r),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                // offset:  Offset(0, 2.h),
                                blurRadius: 12.r),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Консультация",
                              style: GoogleFonts.nunito(
                                color: const Color(0xff050505),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 2.w,
                                vertical: 2.h,
                              ),
                              width:
                                  MediaQuery.of(context).size.width / 2 - 34.w,
                              height: 130.h,
                              decoration: BoxDecoration(
                                  // image: DecorationImage(
                                  //   image: AssetImage(
                                  //     cards[index * 2].path,
                                  //   ),
                                  //   fit: BoxFit.fitWidth,
                                  // ),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      // Image(
                      //   image: AssetImage(
                      //     cards[index * 2].path,
                      //   ),
                      //   width: MediaQuery.of(context).size.width / 2 - 24.w,
                      // ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 2.w,
                          vertical: 2.h,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 10.h,
                        ),
                        width: MediaQuery.of(context).size.width / 2 - 34.w,
                        height: 220.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14.r),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                // offset:  Offset(0, 2.h),
                                blurRadius: 12.r),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Помощь",
                              style: GoogleFonts.nunito(
                                color: const Color(0xff050505),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width / 2 - 32.w,
                              height: 130.h,
                              decoration: BoxDecoration(
                                  // image: DecorationImage(
                                  //   image: AssetImage(
                                  //     cards[index * 2 + 1].path,
                                  //   ),
                                  //   fit: BoxFit.fitWidth,
                                  // ),
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
