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
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(
                        0xff6F767E,
                      ),
                    ),
                  ),
                  Text(
                    "Азизбек Азизов",
                    style: TextStyle(
                      fontFamily: "Nunito",
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
      body: Padding(
        padding: EdgeInsets.all(
          24.w,
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Сообщество",
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      //Navigator.pushNamed(context, "/RecipeSubPage");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 32.h,
                              width: 110.w,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 8.h,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xffD4E8FF),
                                borderRadius: BorderRadius.circular(
                                  8.r,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 5.r),
                                ],
                              ),
                              child: Text(
                                "Подробнее",
                                style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  Navigator.pushNamed(context, "/CommunitySub");
                },
                child: Container(
                  //height: 308.h,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ListTile(
                          leading: Container(
                            height: 40.0.h,
                            width: 40.0.h,
                            padding: EdgeInsets.symmetric(
                                vertical: 8.h, horizontal: 8.h),
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
                          title: Text(
                            "Ибрагим Мухаммедов",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Главный невролог",
                                style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "12.02.2022",
                                style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16.0, right: 16.0, bottom: 16),
                          child: Column(
                            children: [
                              Text(
                                "Хотел сообщить вам о невероятно важном открытии, которое повергло меня в шок. Буквально недавно была проведена операция по трансплантации сердца. И в этой ситуации удивительно было то, что пациент, которому оказывалась данная пересадка, был мертв в течении 5 минут, но ожил, как только ему пересадили сердце. ",
                                style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 16.h),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFF4F4F4),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: Text(
                                      "Ибуклин",
                                      style: TextStyle(
                                        fontFamily: "Nunito",
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF4F4F4),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: Text(
                                      "Болиутоляющее",
                                      style: TextStyle(
                                        fontFamily: "Nunito",
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              //Icons
                              SizedBox(height: 16.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Wrap(
                                    spacing: 16,
                                    children: [
                                      Image.asset("assets/icons/send.png",
                                          height: 18, width: 18),
                                      Image.asset("assets/icons/heart.png",
                                          height: 18, width: 18),
                                      Image.asset("assets/icons/comment.png",
                                          height: 18, width: 18),
                                      Image.asset("assets/icons/warning.png",
                                          height: 18, width: 18),
                                    ],
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Ответить",
                                      style: TextStyle(
                                        fontFamily: "Nunito",
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(height: 16.h),
              //Slider
              SizedBox(
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: 4,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20))),
                    Container(
                        height: 4,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20))),
                    Container(
                        height: 4,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20))),
                    Container(
                        height: 4,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20))),
                  ],
                ),
              ),
              //SLider end
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Болезни",
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      //Navigator.pushNamed(context, "/RecipeSubPage");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 32.h,
                              width: 110.w,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 8.h,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xffD4E8FF),
                                borderRadius: BorderRadius.circular(
                                  8.r,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 5.r),
                                ],
                              ),
                              child: Text(
                                "Подробнее",
                                style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),

              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  print("Pushed to DiseasesDetailPage");
                  Navigator.pushNamed(context, "/DiseasesDetailPage");
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Container(
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
                      children: [
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'Простуда' " - ",
                              style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text:
                                  "Термин «простуда» не является медицинским, однако он настолько приходится на холодное время года. Eтся присоединение бактериальной или вирусной инфекции.Возможно также совокупное воздействие этих микроорганизмов, когда на фоне ослабления иммунитета вследствие флоры.",
                              style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ]),
                        ),
                        Wrap(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ActionChip(
                              // avatar: CircleAvatar(
                              //   backgroundColor: Colors.grey.shade800,
                              //   child: const Text('AB'),
                              // ),
                              label: Text(
                                'Кашель',
                                style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              onPressed: () {
                                print(
                                    'Chip selected not you can change view with some flag');
                              },
                            ),
                            SizedBox(width: 8),
                            ActionChip(
                              // avatar: CircleAvatar(
                              //   backgroundColor: Colors.grey.shade800,
                              //   child: const Text('AB'),
                              // ),
                              label: Text(
                                'Температура',
                                style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              onPressed: () {
                                print(
                                    'Chip selected not you can change view with some flag');
                              },
                            ),
                            SizedBox(width: 8),
                            ActionChip(
                              // avatar: CircleAvatar(
                              //   backgroundColor: Colors.grey.shade800,
                              //   child: const Text('AB'),
                              // ),
                              label: Text(
                                'Боль в горле',
                                style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              onPressed: () {
                                print(
                                    'Chip selected not you can change view with some flag');
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              //Slider
              SizedBox(
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: 4,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20))),
                    Container(
                        height: 4,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20))),
                    Container(
                        height: 4,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20))),
                    Container(
                        height: 4,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20))),
                  ],
                ),
              ),
              //SLider end
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Частые категории",
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      //Navigator.pushNamed(context, "/RecipeSubPage");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 32.h,
                              width: 110.w,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 8.h,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xffD4E8FF),
                                borderRadius: BorderRadius.circular(
                                  8.r,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 5.r),
                                ],
                              ),
                              child: Text(
                                "Подробнее",
                                style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 56.w,
                        width: MediaQuery.of(context).size.width * 0.4,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/profile.png",
                              height: 32.h,
                              width: 24.w,
                            ),
                            Text(
                              "Сердце",
                              style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 56.w,
                        width: MediaQuery.of(context).size.width * 0.4,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/profile.png",
                              height: 32.h,
                              width: 24.w,
                            ),
                            Text(
                              "Сердце",
                              style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 56.w,
                        width: MediaQuery.of(context).size.width * 0.4,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/profile.png",
                              height: 32.h,
                              width: 24.w,
                            ),
                            Text(
                              "Сердце",
                              style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 56.w,
                        width: MediaQuery.of(context).size.width * 0.4,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/profile.png",
                              height: 32.h,
                              width: 24.w,
                            ),
                            Text(
                              "Сердце",
                              style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 56.w,
                        width: MediaQuery.of(context).size.width * 0.4,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/profile.png",
                              height: 32.h,
                              width: 24.w,
                            ),
                            Text(
                              "Сердце",
                              style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 56.w,
                        width: MediaQuery.of(context).size.width * 0.4,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/profile.png",
                              height: 32.h,
                              width: 24.w,
                            ),
                            Text(
                              "Сердце",
                              style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Container(
                  //   padding: EdgeInsets.symmetric(
                  //     horizontal: 10.w,
                  //     vertical: 10.h,
                  //   ),
                  //   width: MediaQuery.of(context).size.width / 2 - 34.w,
                  //   height: 220.h,
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.circular(14.r),
                  //     boxShadow: [
                  //       BoxShadow(
                  //           color: Colors.black.withOpacity(0.1),
                  //           // offset:  Offset(0, 2.h),
                  //           blurRadius: 12.r),
                  //     ],
                  //   ),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text(
                  //         "Консультация",
                  //         style: TextStyle(fontFamily: "Nunito",
                  //           color: const Color(0xff050505),
                  //           fontSize: 16.sp,
                  //           fontWeight: FontWeight.w400,
                  //         ),
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.symmetric(
                  //           horizontal: 2.w,
                  //           vertical: 2.h,
                  //         ),
                  //         width:
                  //             MediaQuery.of(context).size.width / 2 - 34.w,
                  //         height: 130.h,
                  //         decoration: BoxDecoration(
                  //             // image: DecorationImage(
                  //             //   image: AssetImage(
                  //             //     cards[index * 2].path,
                  //             //   ),
                  //             //   fit: BoxFit.fitWidth,
                  //             // ),
                  //             ),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  // Image(
                  //   image: AssetImage(
                  //     cards[index * 2].path,
                  //   ),
                  //   width: MediaQuery.of(context).size.width / 2 - 24.w,
                  // ),
                  // Container(
                  //   margin: EdgeInsets.symmetric(
                  //     horizontal: 2.w,
                  //     vertical: 2.h,
                  //   ),
                  //   padding: EdgeInsets.symmetric(
                  //     horizontal: 10.w,
                  //     vertical: 10.h,
                  //   ),
                  //   width: MediaQuery.of(context).size.width / 2 - 34.w,
                  //   height: 220.h,
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.circular(14.r),
                  //     boxShadow: [
                  //       BoxShadow(
                  //           color: Colors.black.withOpacity(0.1),
                  //           // offset:  Offset(0, 2.h),
                  //           blurRadius: 12.r),
                  //     ],
                  //   ),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text(
                  //         "Помощь",
                  //         style: TextStyle(fontFamily: "Nunito",
                  //           color: const Color(0xff050505),
                  //           fontSize: 16.sp,
                  //           fontWeight: FontWeight.w400,
                  //         ),
                  //       ),
                  //       Container(
                  //         width:
                  //             MediaQuery.of(context).size.width / 2 - 32.w,
                  //         height: 130.h,
                  //         decoration: BoxDecoration(
                  //             // image: DecorationImage(
                  //             //   image: AssetImage(
                  //             //     cards[index * 2 + 1].path,
                  //             //   ),
                  //             //   fit: BoxFit.fitWidth,
                  //             // ),
                  //             ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
