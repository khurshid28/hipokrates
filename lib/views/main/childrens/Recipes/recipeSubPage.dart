import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeSubPage extends StatelessWidget {
  const RecipeSubPage({Key? key}) : super(key: key);

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
                "Рецепты",
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
        child: Column(children: [
          //SearchBox
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (v) {},
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
              hintText: "Поиск",
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
          SizedBox(height: 24),
          //Lekarstva and Filter
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Лекарства",
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
                              Icon(
                                Icons.filter_alt,
                                size: 16,
                                color: Colors.blue,
                              ),
                              Text(
                                "Фильтр",
                                style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          //List of Lekarstva
          SizedBox(
            height: MediaQuery.of(context).size.height * .6,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    print("Pushed to RecipeSubDetailPage");
                    Navigator.pushNamed(context, "/RecipeSubDetailPage");
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
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
                          SizedBox(width: 12), // middle space
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ибуклин",
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
                                      "Ибуклин",
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
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ]),
      ),
    );
  }
}
