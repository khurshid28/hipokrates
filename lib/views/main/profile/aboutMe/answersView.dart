import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswersView extends StatefulWidget {
  const AnswersView({Key? key}) : super(key: key);

  @override
  State<AnswersView> createState() => _AnswersViewState();
}

class _AnswersViewState extends State<AnswersView> {
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
                "Вопросы",
                style: GoogleFonts.nunito(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Container()
              // Container(
              //   width: 36.w,
              //   height: 36.w,
              //   padding: EdgeInsets.symmetric(
              //     vertical: 6.w,
              //     horizontal: 6.w,
              //   ),
              //   decoration: BoxDecoration(
              //     border: Border.all(color: const Color(0xff5596E2), width: 2),
              //     color: const Color.fromRGBO(252, 252, 252, 1),
              //     borderRadius: BorderRadius.circular(
              //       10.0.h,
              //     ),
              //   ),
              //   child: SvgPicture.asset("assets/icons/settings.svg"),
              // ),
           
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(),
        ),
      ),
    );
  }
}
