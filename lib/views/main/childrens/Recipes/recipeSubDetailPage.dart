import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeSubDetailPage extends StatelessWidget {
  const RecipeSubDetailPage({Key? key}) : super(key: key);

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
                  "??????????????",
                  style: TextStyle(
                    fontFamily: "Nunito",
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
                    child: Image.asset("assets/images/profile.png"),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Container(
                  height: 76.w,
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 52.h,
                        width: 52.w,
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
                        child: Image.asset(
                          "assets/images/profile.png",
                        ),
                      ),
                      SizedBox(width: 10), // middle space
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "??????????????",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 213, 215, 215),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  "??????????????",
                                  style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 213, 215, 215),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  "??????????????????????????",
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ActionChip(
                      labelPadding: EdgeInsets.all(2),
                      // avatar: CircleAvatar(
                      //   backgroundColor: Colors.grey.shade800,
                      //   child: const Text('AB'),
                      // ),
                      label: Text(
                        '????????????????',
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
                      labelPadding: EdgeInsets.all(2),
                      // avatar: CircleAvatar(
                      //   backgroundColor: Colors.grey.shade800,
                      //   child: const Text('AB'),
                      // ),
                      label: Text(
                        '????????????????????????????',
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
                      labelPadding: EdgeInsets.all(2),
                      // avatar: CircleAvatar(
                      //   backgroundColor: Colors.grey.shade800,
                      //   child: const Text('AB'),
                      // ),
                      label: Text(
                        '????????????????????',
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
              ),
              SizedBox(height: 16),
              Container(
                width: MediaQuery.of(context).size.width,
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
                        color: Colors.black.withOpacity(0.1), blurRadius: 5.r),
                  ],
                ),
                child: Text(
                  '?????????????? ???????????????? ???????????????? ?????????????? ?????????????? ?? ?????????????????????? ?????? ?????????? ?????????? ?????? ?????????????????????? ???? ???????? 30????. ???????????????????????????? ?? ?????????????? ?????????????????????? ?????? ?????????????????????????? ???????????????????? ?????????????????????? ?? ?????????????????????? ???????????? ???????????????? ???????????????? ???????????????????? ??????????????????.  ?????????????????????????? ???????????????????? ???????????????????? ??????????????, ???????????????????? ?????????????? ???????????????? ??/?????? ???????????? ??????????????????, ?????????? ???????????????? ?? ???????????????? ?????????????????????????? ??????????????????????.  ???????????? ???????????????? ????????????????:???????????????????? ?? ?????????????????????? ???????????????????????????? ??????????????????????:???????????? 3500 ???? Ph.Eur;?????????????? 4200 ???? Ph.Eur;?????????????? 250 ???? Ph.Eur;  ?????????????????????????????? ????????????????: ?????????????????? ????????????????????????????????????????, ???????????? ???????????????????????????????????????? (?????? ??), ?????????????? ?????????????? ????????????????????, ???????????? ??????????????.  ???????????? ????????????????: ??????????, ????????????????????????, ???????????????????????? ?????? (??122), ???????????????????? ???????????????? 30% (?????????? ??????????), ?????????????????????? ?????????????????? 30% (?????????? ??????????), ???????????? ?????????????? (??171), ???????????????? 6000.  ???????????????? ???????????????? ?????????????????????????? ??????????????, ???????????? ?????? ??????????, ??????????????, ???????????????????? ?? ???????????????????????????? ??????????????.  ?????? ???????????????????? ???????????????????? ?? ?????????????? ?????????? ???????????????? ???????????????? ??????????????????????????????, ?????????????????? ???????????? ?????????????? ?????????????? ?? ???????????? ??????????.  ?? ?????????????????? ?????????????? ?? ??????????????, ???????????????????? ????????????????????????????, ?????????????????????? ?????????????????????? ???????????????? ?? ?????????????????????????? ?????????????? ?????????? ???????????? ?????????????? ??????.  ?????????????????????????? ???????????? ?? ?????????????? ?????????????????????????? ?? ???????????????????????? ???????????????????? ??????.  ????????????????: ??????????????????????????????, ??????????????????????????, ?? ?????????? - ????????????.  ??????????????: ???????????? ??????????????????, ???????????????????????????????? ??????????????.  ???????????? ???????????????????? ?? ???????? ???????? ???????????????????????? ?????????????????????????? ?? ?????????????????????? ???? ?????????????? ?????????????????? ??????????????????????.  ????????????????: ???? 1-2 ??????. ?????????? ????????, ???? ???????????????????? ?? ?????????????? ??????????. ?????? ?????????????????????????? ?????????????????????????? ???? ?????????? ?????? ?????????????????? ?????? 1-4 ??????.  ?? ?????????? ???????????????? ?????????????????? ???? ???????????????????? ??????????.  ?????????????????????????????????? ?????????????? ?????????? ?????????????????????????? ???? ???????????????????? ???????? (?????? ?????????????????? ???????????????? ?????????????????????? ???????????????????? ???????????????????????? ?? ??????????) ???? ???????????????????? ?????????????? ?????? ?????? (?????? ?????????????????????????? ???????????????????? ???????????????????????????? ??????????????).  ???????????????????????????????? ???????????????????? ???????????????????????????????? ?? ?????????????????????? ??????????????????; ???????????? ????????????????????; ???????????????????? ???????????????????????? ??????????????????????.  ???????????????????? ?????? ???????????????????????? ?? ?? ???????????? ???????????????? ???????????????????????? ???????????????????? ?????????????????????? ?????? ???????????????????????? ?????????????? ????????????????????????. ???????????????????? ???????????????? ?? ??????????????, ?????????? ?????????????????? ???????????? ?????? ???????????? ?????????????????? ?????????????????????????? ???????? ?????? ??????????.  ?????????????????? ?? ???????????????????? ?????????????????????????????? ?????????????????????????????????? ?????????????? ?????????????????????????? ????????????, (?????????????????????? ????????????????????, ????????????????????????); ?????????????????????? ??????????????????????????-???????????????????????????? ?????????????????????? ??????????????, ??????????????????, ????????????, ???????????????? ????????????. ?????????????????? ?????????? ???????????????? ?????? ?????????????????? ???????? ??????????????, ???????????????????????????????? ?????????????????????? ?????????????????????????? ????????, ??????????????????????, ?????????????? (?? ?????????????? ?????????????????????????????? ??????????????); ?????? ?????????????????? ?????????????????????????? ???????? ?? ?????????????????? ?? ???????????????????? ???????????????? ?????? ?? ???????????? ???????????????????????? ?? ??????????????; ???????????????????? ?? ?????????????????????????????????????? ?? ?????????????????????????????? ???????????????????????? ?????????????? ?????????????? ??????????????.  ?????????????????????????????? ???????????????? ?????????? ?????????????? ?????????????????????????????????? ??????????????????, ?????????????? ???? ???????????????????????? ?????? ?????????????????? ?????????????? ?????????????? ?????????????? ??, ?????? ??????????, ???????????????????????? ???????????????????????? ?? ?????????????????? ???????????? ???? ??????????????????????. ?????????????????????? ???????????????? ?? ?????????????????????????? ?????????????????? ???????????????????? ?????? ?????????????????? ???? ?????????????? ?? ???????????????????????? ?????? ????????????????????????????.  ?????????????????????????????????? ???????????????? ???????????????? ???????????????????????? ?????????????????????????????? ?????????????????????????????????? ?????????????? ?????????????????????????? ????????????.  ???????????????? ?? ???????????? ?????????????????????? ???????????????? ????????????, ?????????????? ?? ???????????????? ?????????????????? ?????????????????????????? ??????????, ?????????????????? ?? ????????????, ?????? ???????????????????????? ???? ?????????? ?????????????? ???????????????????? ?? ???????????? ??????????????????.  ???????????????? ???????????? ????????????????, ???????????????? ?????????????????? ???????????????? ??????????, ????????????????????????????????????????, ?? ?????????? ?????????????????????????????????????? ?????????????????????????? ?? ???????????????????? ????????????????, ?? ?????????????????????? ?????????????? ??????????????????????. ?????????????????????????????? ?????????????????????? ?? ???????????????????????????? ?????????????????????? ?????????????? ?? ??????????????????.  ???????? ???????????????? ???? ???????? ???????????????????????? 3 ????????  ?????????? ?????????????? ????????????????, ???????????????? ?????????????????? ???????????????? ??????????, ????????????????????????????????????????, ?? ?????????? ?????????????????????????????????????? ?????????????????????????? ?? ???????????????????? ????????????????, ?? ?????????????????????? ?????????????? ??????????????????????.  1 ??????. ???????????????? ????????????????:???????????????????? ?? ?????????????????????? ???????????????????????????? ??????????????????????:???????????? 3500 ???? Ph.Eur;?????????????? 4200 ???? Ph.Eur;?????????????? 250 ???? Ph.Eur;  ?????????????????????????????? ????????????????: ?????????????????? ????????????????????????????????????????, ???????????? ???????????????????????????????????????? (?????? ??), ?????????????? ?????????????? ????????????????????, ???????????? ??????????????.  ???????????? ????????????????: ??????????, ????????????????????????, ???????????????????????? ?????? (??122), ???????????????????? ???????????????? 30% (?????????? ??????????), ?????????????????????? ?????????????????? 30% (?????????? ??????????), ???????????? ?????????????? (??171), ???????????????? 6000.  20 ????. - ???????????????? (1) - ?????????? ??????????????????.  20 ????. - ???????????????? (2) - ?????????? ??????????????????.  20 ????. - ???????????????? (4) - ?????????? ??????????????????.  20 ????. - ???????????????? (5) - ?????????? ??????????????????.',
                  style: TextStyle(
                    fontFamily: "Nunito",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
