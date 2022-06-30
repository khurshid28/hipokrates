import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hipokrates/exportpaths.dart';
import 'package:hipokrates/views/main/childrens/homeView.dart';
import 'package:hipokrates/views/main/childrens/diseasesView.dart';
import 'package:hipokrates/views/main/childrens/recipesView.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int selectBottomItem = 0;
  Widget selectScreen(int num) {
    if (num == 0) {
      return const HomeView();
    } else if (num == 1) {
      return const RecipesView();
    } else if (num == 2) {
      return const DiseasesView();
    } else {
      return const ChatsView();
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: selectScreen(selectBottomItem),
      bottomNavigationBar: bottomNavBar(size),
    );
  }

  Widget bottomNavBar(Size size) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
      ),
      width: size.width,
      height: 78.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 12.r),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14.r),
          topRight: Radius.circular(14.r),
        ),
      ),
      child:
          // GNav(
          // // rippleColor: Colors.grey.shade600, // tab button ripple color when pressed
          // // hoverColor: Colors.grey.shade600, // tab button hover color
          // // haptic: true, // haptic feedback
          // tabBorderRadius: 12.r,
          // onTabChange: (v){
          //   selectBottomItem =v;
          //   setState(() {

          //   });
          // },
          // // tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
          // // tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
          // // tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
          // curve: Curves.easeInOut, // tab animation curves
          // duration: Duration(milliseconds: 200), // tab animation duration
          // gap: 8, // the tab button gap between icon and text
          // color: const Color(0xff6F767E), // unselected icon color
          // activeColor:const Color(0xff5596E2), // selected icon and text color
          // iconSize: 24, // tab button icon size
          // tabBackgroundColor:
          //    const Color(0xffD4E8FF), // selected tab background color
          // padding: EdgeInsets.symmetric(
          //     horizontal: 20.w, vertical: 5.h), // navigation bar padding
          // tabs: [
          //   GButton(
          //     padding: EdgeInsets.symmetric(
          //       horizontal: 8.w,
          //       vertical: 8.h,
          //     ),
          //     // leading: SvgPicture.asset("assets/icons/Phome.svg,"),
          //     icon:Icons.add,
          //     text: 'Главная',
          //   ),
          //   GButton(
          //     padding: EdgeInsets.symmetric(
          //       horizontal: 8.w,
          //       vertical: 8.h,
          //     ),
          //     // leading: SvgPicture.asset("assets/icons/Phome.svg,"),
          //     icon:Icons.add,
          //     text: 'Болезни',
          //   ),
          //   GButton(
          //     padding: EdgeInsets.symmetric(
          //       horizontal: 8.w,
          //       vertical: 8.h,
          //     ),
          //     iconActiveColor:Colors.green,
          //     // leading: SvgPicture.asset("assets/icons/Phome.svg,",width: 20.w,height: 20.h,color: Colors.red,),
          //     icon:Icons.add,
          //     text: 'Рецепты',
          //   ),
          //   GButton(
          //     padding: EdgeInsets.symmetric(
          //       horizontal: 8.w,
          //       vertical: 8.h,
          //     ),
          //     // leading: SvgPicture.asset("assets/icons/Phome.svg,"),
          //     icon:Icons.add,
          //     text: 'Чат',
          //   )
          // ])

          Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              selectBottomItem = 0;
              setState(() {});
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8.5.w,
                vertical: 8.5.h,
              ),
              decoration: BoxDecoration(
                color: selectBottomItem == 0 ? const Color(0xffD4E8FF) : null,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    12.r,
                  ),
                ),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/Phome${selectBottomItem == 0 ? "2" : ""}.svg",
                    color: selectBottomItem == 0
                        ? const Color(0xff5596E2)
                        : const Color(0xff6F767E),
                  ),
                  if (selectBottomItem == 0)
                    SizedBox(
                      width: 8.5.w,
                    ),
                  if (selectBottomItem == 0)
                    Text(
                      "Главная",
                      style: GoogleFonts.nunito(
                        color: selectBottomItem == 0
                            ? const Color(0xff5596E2)
                            : const Color(0xff6F767E),
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
              selectBottomItem = 1;
              setState(() {});
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8.5.w,
                vertical: 8.5.h,
              ),
              decoration: BoxDecoration(
                color: selectBottomItem == 1 ? const Color(0xffD4E8FF) : null,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    12.r,
                  ),
                ),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/Precipes${selectBottomItem == 1 ? "2" : ""}.svg",
                    color: selectBottomItem == 1
                        ? const Color(0xff5596E2)
                        : const Color(0xff6F767E),
                  ),
                  if (selectBottomItem == 1)
                    SizedBox(
                      width: 8.5.w,
                    ),
                  if (selectBottomItem == 1)
                    Text(
                      "Рецепты",
                      style: GoogleFonts.nunito(
                        color: const Color(0xff5596E2),
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
              selectBottomItem = 2;
              setState(() {});
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8.5.w,
                vertical: 8.5.h,
              ),
              decoration: BoxDecoration(
                color: selectBottomItem == 2 ? const Color(0xffD4E8FF) : null,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    12.r,
                  ),
                ),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/Pbolezni${selectBottomItem == 2 ? "2" : ""}.svg",
                    color: selectBottomItem == 2
                        ? const Color(0xff5596E2)
                        : const Color(0xff6F767E),
                  ),
                  if (selectBottomItem == 2)
                    SizedBox(
                      width: 8.5.w,
                    ),
                  if (selectBottomItem == 2)
                    Text(
                      "Болезни",
                      style: GoogleFonts.nunito(
                        color: const Color(0xff5596E2),
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
              selectBottomItem = 3;
              setState(() {});
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8.5.w,
                vertical: 8.5.h,
              ),
              decoration: BoxDecoration(
                color: selectBottomItem == 3 ? const Color(0xffD4E8FF) : null,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    12.r,
                  ),
                ),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/Pchat${selectBottomItem == 3 ? "2" : ""}.svg",
                    color: selectBottomItem == 3
                        ? const Color(0xff5596E2)
                        : const Color(0xff6F767E),
                  ),
                  if (selectBottomItem == 3)
                    SizedBox(
                      width: 8.5.w,
                    ),
                  if (selectBottomItem == 3)
                    Text(
                      "Чат",
                      style: GoogleFonts.nunito(
                        color: const Color(0xff5596E2),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
