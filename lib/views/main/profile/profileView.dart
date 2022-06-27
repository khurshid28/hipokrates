import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  List<AboutMeCard> cards = [
    AboutMeCard(
      navigationPath: "/BioView",
      imagePath: "assets/images/ProfileCards/cardBio.png",
      title: "Биография",
    ),
    AboutMeCard(
      navigationPath: "/ExperienceView",
      imagePath: "assets/images/ProfileCards/cardWork.png",
      title: "Опыт работы",
    ),
    AboutMeCard(
        navigationPath: "/StudyView",
        imagePath: "assets/images/ProfileCards/cardEdu.png",
        title: "Образование"),
    AboutMeCard(
        navigationPath: "/CertificateView",
        imagePath: "assets/images/ProfileCards/cardCer.png",
        title: "Сертификаты"),
    AboutMeCard(
        navigationPath: "/ArticlesView",
        imagePath: "assets/images/ProfileCards/cardStat.png",
        title: "Статьи"),
    AboutMeCard(
        navigationPath: "/AnswersView",
        imagePath: "assets/images/ProfileCards/cardanswer.png",
        title: "Вопросы"),
  ];

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
                "Профиль",
                style: GoogleFonts.nunito(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  Navigator.pushNamed(context, "/SettingsView");
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
                  child: SvgPicture.asset("assets/icons/settings.svg"),
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
                height: 24.0.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 22.w,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 125.w,
                      width: 110.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/profile.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 14.w,
                    ),
                    Container(
                      height: 125.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.0.r,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 8.h,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Азизбек Азизов",
                              style: GoogleFonts.nunito(
                                fontSize: 20.0.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "Med Shox Center - \nДиректор,  Невролог",
                              style: GoogleFonts.nunito(
                                  fontSize: 14.sp,
                                  color: const Color(0xff6F767E)),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.call,
                                  size: 18.0,
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Text(
                                  "+998 94 234 54 23",
                                  style: GoogleFonts.nunito(fontSize: 14.sp),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.0.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 22.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 16.0.w,
                          top: 8.0.h,
                          right: 13.w,
                          bottom: 8.h,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Рабочие дни",
                                style: GoogleFonts.nunito(
                                    fontSize: 16.0,
                                    color:
                                        const Color.fromRGBO(12, 87, 175, 1)),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "ПН - ВТ - СР - ПТ - СБ",
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 2.w,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 16.0.w,
                          top: 8.0.h,
                          right: 13.w,
                          bottom: 8.h,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Рабочие часы",
                                style: GoogleFonts.nunito(
                                    fontSize: 16.0,
                                    color:
                                        const Color.fromRGBO(12, 87, 175, 1)),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "12:00 - 18:00",
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.0.h,
              ),
              Container(
                height: 56.0.h,
                margin: EdgeInsets.symmetric(
                  horizontal: 22.w,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Текущий статус",
                      style: GoogleFonts.nunito(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 6.h,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xffD4E8FF),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              12.r,
                            ),
                          ),
                        ),
                        child: Text(
                          "На работе",
                          style: GoogleFonts.nunito(
                            color: const Color(0xff0C57AF),
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 24.0.h,
              // ),
              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     elevation: 0,
              //     primary: const Color(0xff5596E2),
              //     padding: EdgeInsets.symmetric(
              //       horizontal: 20.w,
              //       vertical: 12.h,
              //     ),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(
              //         10.r,
              //       ),
              //     ),
              //   ),
              //   onPressed: () {},
              //   child: Text(
              //     "Написать тех. поддержке",
              //     style: GoogleFonts.nunito(
              //       fontSize: 16.0.w,
              //       fontWeight: FontWeight.w700,
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 20.0.h,
              ),
              // Align(
              //   alignment: Alignment.topLeft,
              //   child: Text(
              //     "Консультация",
              //     style: GoogleFonts.nunito(
              //       fontSize: 24.0.w,
              //       fontWeight: FontWeight.w700,
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 16.0.h,
              // ),
              // Container(
              //   margin: EdgeInsets.symmetric(
              //     horizontal: 2.w,
              //   ),
              //   padding: EdgeInsets.symmetric(
              //     horizontal: 12.w,
              //     vertical: 8.h,
              //   ),
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(
              //       10.0.r,
              //     ),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey.shade400,
              //         offset: const Offset(2, 2),
              //         blurRadius: 2,
              //       ),
              //     ],
              //   ),
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Padding(
              //         padding: EdgeInsets.symmetric(
              //           vertical: 4.h,
              //         ),
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           children: [
              //             Text(
              //               "Основные языки",
              //               style: GoogleFonts.nunito(
              //                 color: const Color(0xff6F767E),
              //                 fontWeight: FontWeight.w400,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 85.w,
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Padding(
              //               padding: EdgeInsets.symmetric(
              //                 vertical: 4.h,
              //               ),
              //               child: Text(
              //                 "Русский",
              //                 style: GoogleFonts.nunito(
              //                   color: const Color(0xff050505),
              //                   fontWeight: FontWeight.w700,
              //                 ),
              //               ),
              //             ),
              //             Padding(
              //               padding: EdgeInsets.symmetric(
              //                 vertical: 4.h,
              //               ),
              //               child: Text(
              //                 "Узбекский",
              //                 style: GoogleFonts.nunito(
              //                   color: const Color(0xff050505),
              //                   fontWeight: FontWeight.w700,
              //                 ),
              //               ),
              //             ),
              //             Padding(
              //               padding: EdgeInsets.symmetric(
              //                 vertical: 4.h,
              //               ),
              //               child: Text(
              //                 "Английский",
              //                 style: GoogleFonts.nunito(
              //                   color: const Color(0xff050505),
              //                   fontWeight: FontWeight.w700,
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 16.0.h,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Container(
              //       width: 96.w,
              //       height: 64.0.h,
              //       margin: EdgeInsets.symmetric(
              //         horizontal: 2.w,
              //       ),
              //       padding: EdgeInsets.symmetric(
              //         vertical: 8.h,
              //       ),
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(10.0),
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.grey.shade400,
              //             offset: const Offset(2, 2),
              //             blurRadius: 2,
              //           ),
              //         ],
              //       ),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Text(
              //             "50 000 сум",
              //             style: GoogleFonts.nunito(
              //               color: const Color(0xff0C57AF),
              //               fontWeight: FontWeight.w600,
              //             ),
              //           ),
              //           Text(
              //             "Базовый",
              //             style: GoogleFonts.nunito(
              //               color: const Color(0xff050505),
              //               fontWeight: FontWeight.w400,
              //               fontSize: 16.sp,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //     Container(
              //       width: 96.w,
              //       height: 64.0.h,
              //       margin: EdgeInsets.symmetric(
              //         horizontal: 2.w,
              //       ),
              //       padding: EdgeInsets.symmetric(
              //         vertical: 8.h,
              //       ),
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(10.0),
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.grey.shade400,
              //             offset: const Offset(2, 2),
              //             blurRadius: 2,
              //           ),
              //         ],
              //       ),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Text(
              //             "100 000 сум",
              //             style: GoogleFonts.nunito(
              //               color: const Color(0xff0C57AF),
              //               fontWeight: FontWeight.w600,
              //             ),
              //           ),
              //           Text(
              //             "Стандарт",
              //             style: GoogleFonts.nunito(
              //               color: const Color(0xff050505),
              //               fontWeight: FontWeight.w400,
              //               fontSize: 16.sp,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //     Container(
              //       width: 96.w,
              //       height: 64.0.h,
              //       margin: EdgeInsets.symmetric(
              //         horizontal: 2.w,
              //       ),
              //       padding: EdgeInsets.symmetric(
              //         vertical: 8.h,
              //       ),
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(10.0),
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.grey.shade400,
              //             offset: const Offset(2, 2),
              //             blurRadius: 2,
              //           ),
              //         ],
              //       ),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Text(
              //             "500 000 сум",
              //             style: GoogleFonts.nunito(
              //               color: const Color(0xff0C57AF),
              //               fontWeight: FontWeight.w600,
              //             ),
              //           ),
              //           Text(
              //             "Премиум",
              //             style: GoogleFonts.nunito(
              //               color: const Color(0xff050505),
              //               fontWeight: FontWeight.w400,
              //               fontSize: 16.sp,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 16.0.h,
              // ),
              // Container(
              //   padding: EdgeInsets.symmetric(
              //     horizontal: 8.w,
              //     vertical: 8.h,
              //   ),
              //   margin: EdgeInsets.symmetric(
              //     horizontal: 2.w,
              //   ),
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(
              //       10.0.r,
              //     ),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey.shade400,
              //         offset: const Offset(2, 2),
              //         blurRadius: 2,
              //       ),
              //     ],
              //   ),
              //   child: Text(
              //     "Описание тарифа со всем тем, что будет входить в него и какие ньюансы он будет иметь при себе.",
              //     style: GoogleFonts.nunito(
              //       color: const Color(0xff050505),
              //       fontSize: 16.sp,
              //       fontWeight: FontWeight.w400,
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 22.0.h,
              // ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 22.w,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Обо мне",
                    style: GoogleFonts.nunito(
                      fontSize: 24.0.w,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.0.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 22.w,
                ),
                child: Column(
                  children: List.generate(
                    cards.length ~/ 2,
                    (index) => Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 8.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                cards[index * 2].navigationPath,
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.h,
                                vertical: 10.h,
                              ),
                              width: 156.w,
                              height: 130.w + 45.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14.r),
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
                                    cards[index * 2].title,
                                    style: GoogleFonts.nunito(
                                      color: const Color(0xff050505),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Container(
                                    width: 136.w,
                                    height: 136.w,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          cards[index * 2].imagePath,
                                        ),
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                cards[index * 2 + 1].navigationPath,
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                                vertical: 10.h,
                              ),
                              width: 156.w,
                              height: 130.w + 45.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14.r),
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
                                    cards[index * 2 + 1].title,
                                    style: GoogleFonts.nunito(
                                      color: const Color(0xff050505),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Container(
                                    width: 136.w,
                                    height: 136.w,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          cards[index * 2 + 1].imagePath,
                                        ),
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutMeCard {
  String imagePath;
  String navigationPath;
  String title;
  AboutMeCard({
    required this.imagePath,
    required this.navigationPath,
    required this.title,
  });
}
