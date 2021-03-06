import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunitySub extends StatefulWidget {
  const CommunitySub({Key? key}) : super(key: key);

  @override
  State<CommunitySub> createState() => _CommunitySubState();
}

class _CommunitySubState extends State<CommunitySub> {
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
                  "????????????????????",
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
                    Navigator.pushNamed(context, "/ProfileView");
                  },
                  child: Container(
                    height: 40.0.h,
                    width: 40.0.h,
                    padding:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.h),
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
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: (v) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.search_outlined),
                  hintText: "??????????",
                  hintStyle: TextStyle(
                    fontFamily: "Nunito",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(
                      0xff6F767E,
                    ),
                  ),
                  contentPadding:
                      const EdgeInsets.only(left: 15, top: 40, right: 15),
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
              SizedBox(
                height: 8.h,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .7,
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: ((context, index) => InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            //Navigator.pushNamed(context, "/CommunitySub");
                          },
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 16),
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
                                            image: AssetImage(
                                                "assets/images/profile.png"),
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            10.0.h,
                                          ),
                                        ),
                                      ),
                                      title: Text(
                                        "?????????????? ????????????????????",
                                        style: TextStyle(
                                          fontFamily: "Nunito",
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                      subtitle: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "?????????????? ????????????????",
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
                                            "?????????? ???????????????? ?????? ?? ???????????????????? ???????????? ????????????????, ?????????????? ???????????????? ???????? ?? ??????. ?????????????????? ?????????????? ???????? ?????????????????? ???????????????? ???? ???????????????????????????? ????????????. ?? ?? ???????? ???????????????? ?????????????????????? ???????? ????, ?????? ??????????????, ???????????????? ?????????????????????? ???????????? ??????????????????, ?????? ?????????? ?? ?????????????? 5 ??????????, ???? ????????, ?????? ???????????? ?????? ???????????????????? ????????????. ",
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
                                                padding:
                                                    const EdgeInsets.all(5),
                                                decoration: const BoxDecoration(
                                                  color: Color(0xFFF4F4F4),
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                              SizedBox(width: 10.w),
                                              Container(
                                                padding: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFF4F4F4),
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                          //Icons
                                          SizedBox(height: 16.h),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Wrap(
                                                spacing: 16,
                                                children: [
                                                  Image.asset(
                                                      "assets/icons/send.png",
                                                      height: 18,
                                                      width: 18),
                                                  Image.asset(
                                                      "assets/icons/heart.png",
                                                      height: 18,
                                                      width: 18),
                                                  Image.asset(
                                                      "assets/icons/comment.png",
                                                      height: 18,
                                                      width: 18),
                                                  Image.asset(
                                                      "assets/icons/warning.png",
                                                      height: 18,
                                                      width: 18),
                                                ],
                                              ),
                                              TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "????????????????",
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
                        ))),
              ),
            ],
          ),
        )));
  }
}
