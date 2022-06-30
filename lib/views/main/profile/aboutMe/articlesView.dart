import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hipokrates/exportpaths.dart';

class ArticlesView extends StatefulWidget {
  const ArticlesView({Key? key}) : super(key: key);

  @override
  State<ArticlesView> createState() => _ArticlesViewState();
}

class _ArticlesViewState extends State<ArticlesView> {
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
                "Научные работы",
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AddorUpdateArticleAlert(),
                  );
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
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
                  child: SvgPicture.asset("assets/icons/add.svg"),
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
              ...List.generate(
                12,
                (index) => Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 228.h,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("assets/images/profile.png"),
                              fit: BoxFit.cover),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            8.r,
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 12.r),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, "/ArticlesReadView");
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        8.r,
                                      ),
                                      topRight: Radius.circular(
                                        8.r,
                                      ),
                                    ),
                                  ),
                                  width: 327.w,
                                ),
                              ),
                            ),
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
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Название научной работы",
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
                                        "Краткое описание",
                                        style: TextStyle(
                                          fontFamily: "Nunito",
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xff050505),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4.h,
                                      ),
                                      Text(
                                        "Год получения",
                                        style: TextStyle(
                                          fontFamily: "Nunito",
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xff6F767E),
                                        ),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (
                                          context,
                                        ) =>
                                            AlertDialog(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              10.r,
                                            ),
                                          ),
                                          insetPadding: EdgeInsets.zero,
                                          contentPadding: EdgeInsets.zero,
                                          content: SizedBox(
                                            height: 80.h,
                                            width: 280.w,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                    showDialog(
                                                      context: context,
                                                      builder: (
                                                        context,
                                                      ) =>
                                                          AlertDialog(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            10.r,
                                                          ),
                                                        ),
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        contentPadding:
                                                            EdgeInsets.zero,
                                                        content: Container(
                                                          height: 197.h,
                                                          width:
                                                              double.infinity,
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                            horizontal: 12.w,
                                                            vertical: 12.h,
                                                          ),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                height: 28.h,
                                                                width: 327.w,
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Text(
                                                                  "Причина удаления",
                                                                  style:
                                                                      GoogleFonts
                                                                          .nunito(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        20.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 16.h,
                                                              ),
                                                              SizedBox(
                                                                height: 56.h,
                                                                child:
                                                                    TextFormField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        const Color(
                                                                            0xffF4F4F4),
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .circular(
                                                                        8.r,
                                                                      ),
                                                                    ),
                                                                    hintText:
                                                                        'Причина',
                                                                    hintStyle:
                                                                        GoogleFonts
                                                                            .nunito(
                                                                      fontSize:
                                                                          14.sp,
                                                                      color: const Color(
                                                                          0xff6F767E),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 24.h,
                                                              ),
                                                              SizedBox(
                                                                height: 48.h,
                                                                // width: 303.w,
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      InkWell(
                                                                        onTap:
                                                                            () {
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              139.5.w,
                                                                          alignment:
                                                                              Alignment.center,
                                                                          padding:
                                                                              EdgeInsets.symmetric(
                                                                            vertical:
                                                                                12.h,
                                                                          ),
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.r),
                                                                            border:
                                                                                Border.all(
                                                                              color: const Color(0xff0C57AF),
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Text(
                                                                            "Отменить",
                                                                            style:
                                                                                TextStyle(
                                                                              fontFamily: "Nunito",
                                                                              color: const Color(0xff0C57AF),
                                                                              fontSize: 16.sp,
                                                                              fontWeight: FontWeight.w700,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      InkWell(
                                                                        onTap:
                                                                            () {
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              139.5.w,
                                                                          alignment:
                                                                              Alignment.center,
                                                                          padding:
                                                                              EdgeInsets.symmetric(
                                                                            vertical:
                                                                                12.h,
                                                                          ),
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                const Color(0xff0C57AF),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.r),
                                                                            border:
                                                                                Border.all(
                                                                              color: const Color(0xff0C57AF),
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Text(
                                                                            "Удалить",
                                                                            style:
                                                                                TextStyle(
                                                                              fontFamily: "Nunito",
                                                                              color: Colors.white,
                                                                              fontSize: 16.sp,
                                                                              fontWeight: FontWeight.w700,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ]),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                      height: 40.h,
                                                      width: 280.w,
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        vertical: 10.h,
                                                        horizontal: 10.w,
                                                      ),
                                                      child: Text("Удалить")),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                    showDialog(
                                                      context: context,
                                                      builder: (context) =>
                                                          AddorUpdateArticleAlert(),
                                                    );
                                                  },
                                                  child: Container(
                                                      height: 40.h,
                                                      width: 280.w,
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        vertical: 10.h,
                                                        horizontal: 10.w,
                                                      ),
                                                      child: Text(
                                                          "Редактировать")),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: 36.w,
                                      height: 36.w,
                                      padding: EdgeInsets.symmetric(
                                        vertical: 6.w,
                                        horizontal: 6.w,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xff5596E2),
                                            width: 2),
                                        color: const Color.fromRGBO(
                                            252, 252, 252, 1),
                                        borderRadius: BorderRadius.circular(
                                          10.0.h,
                                        ),
                                      ),
                                      child: SvgPicture.asset(
                                          "assets/icons/more.svg"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
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

class AddorUpdateArticleAlert extends StatefulWidget {
  String? address;
  String? whoIs;
  String? fromDate;
  String? toDate;
  AddorUpdateArticleAlert({
    Key? key,
    this.address,
    this.whoIs,
    this.fromDate,
    this.toDate,
  }) : super(key: key);

  @override
  State<AddorUpdateArticleAlert> createState() =>
      _AddorUpdateArticleAlertState();
}

class _AddorUpdateArticleAlertState extends State<AddorUpdateArticleAlert> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10.r,
        ),
      ),
      insetPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      content: SizedBox(
        width: 332.w,
        // height: 400.h,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12.w,
            vertical: 12.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Добавьте опыт работы",
                      style: TextStyle(
                        fontFamily: "Nunito",
                        color: const Color(0xff050505),
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 32.w,
                        height: 32.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            16.w,
                          ),
                          color: const Color(0xffF4F4F4),
                        ),
                        padding: EdgeInsets.all(
                          6.w,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/x.svg",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                const Divider(
                  color: Color(0xffF4F4F4),
                ),
                SizedBox(
                  height: 24.h,
                ),
                SizedBox(
                  height: 156.h,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 139.5.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Место работы",
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
                                Container(
                                  height: 40.0.h,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(244, 244, 244, 1),
                                    borderRadius: BorderRadius.circular(
                                      8.0,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 135.w,
                                        child: TextFormField(
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          onChanged: (v) {},
                                          validator: (v) {
                                            if (v!.length < 6) {
                                              return "";
                                            }
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                            hintText: "Место работы",
                                            hintStyle: TextStyle(
                                              fontFamily: "Nunito",
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w600,
                                              color: const Color.fromRGBO(
                                                  111, 118, 126, 1),
                                            ),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                              horizontal: 15.w,
                                              vertical: 15.h,
                                            ),
                                            errorStyle: const TextStyle(
                                              height: 0,
                                            ),
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 139.5.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Должность",
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
                                Container(
                                  height: 40.0.h,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(244, 244, 244, 1),
                                    borderRadius: BorderRadius.circular(
                                      8.0,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 135.w,
                                        child: TextFormField(
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          onChanged: (v) {},
                                          validator: (v) {
                                            if (v!.length < 6) {
                                              return "";
                                            }
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                            hintText: "Должность",
                                            hintStyle: TextStyle(
                                              fontFamily: "Nunito",
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w600,
                                              color: const Color.fromRGBO(
                                                  111, 118, 126, 1),
                                            ),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                              horizontal: 15.w,
                                              vertical: 15.h,
                                            ),
                                            errorStyle: const TextStyle(
                                              height: 0,
                                            ),
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 139.5.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Годы работы",
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
                                Row(
                                  children: [
                                    Container(
                                      height: 40.0.h,
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            244, 244, 244, 1),
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 135.w - 40.h,
                                            child: TextFormField(
                                              autovalidateMode: AutovalidateMode
                                                  .onUserInteraction,
                                              onChanged: (v) {},
                                              validator: (v) {
                                                if (v!.length < 6) {
                                                  return "";
                                                }
                                                return null;
                                              },
                                              decoration: InputDecoration(
                                                hintText: "С",
                                                hintStyle: TextStyle(
                                                    fontFamily: "Nunito",
                                                    fontWeight: FontWeight.w600,
                                                    color: const Color.fromRGBO(
                                                        111, 118, 126, 1)),
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  horizontal: 15.w,
                                                  vertical: 15.h,
                                                ),
                                                errorStyle: const TextStyle(
                                                  height: 0,
                                                ),
                                                border:
                                                    const OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        14.r),
                                                                topRight: Radius
                                                                    .circular(
                                                                        14.r),
                                                              ),
                                                            ),
                                                            child: Column(
                                                              children: [
                                                                SizedBox(
                                                                  height: 10.h,
                                                                ),
                                                                SizedBox(
                                                                  height: 180.h,
                                                                  child:
                                                                      CupertinoDatePicker(
                                                                    mode: CupertinoDatePickerMode
                                                                        .date,
                                                                    minimumYear:
                                                                        1950,
                                                                    maximumYear:
                                                                        DateTime.now().year -
                                                                            16,
                                                                    initialDateTime:
                                                                        DateTime(
                                                                            2000),
                                                                    dateOrder:
                                                                        DatePickerDateOrder
                                                                            .dmy,
                                                                    onDateTimeChanged:
                                                                        (val) {},
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .symmetric(
                                                                    horizontal:
                                                                        20.w,
                                                                  ),
                                                                  child:
                                                                      Divider(
                                                                    color: const Color(
                                                                        0xff5596E2),
                                                                    thickness:
                                                                        1.4.h,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: 60.h,
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .symmetric(
                                                                      horizontal:
                                                                          28.w,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            Navigator.pop(context);
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            padding:
                                                                                EdgeInsets.symmetric(
                                                                              horizontal: 31.5.w,
                                                                              vertical: 8.h,
                                                                            ),
                                                                            decoration: BoxDecoration(
                                                                                border: Border.all(color: const Color(0xff5596E2)),
                                                                                color: Colors.white,
                                                                                borderRadius: BorderRadius.circular(
                                                                                  12.r,
                                                                                )),
                                                                            child:
                                                                                Text(
                                                                              "Отменить",
                                                                              style: TextStyle(
                                                                                fontFamily: "Nunito",
                                                                                color: const Color(0xff5596E2),
                                                                                fontWeight: FontWeight.w700,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            Navigator.pop(context);
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            padding:
                                                                                EdgeInsets.symmetric(
                                                                              horizontal: 19.5.w,
                                                                              vertical: 8.h,
                                                                            ),
                                                                            decoration: BoxDecoration(
                                                                                color: const Color(0xff5596E2),
                                                                                borderRadius: BorderRadius.circular(
                                                                                  12.r,
                                                                                )),
                                                                            child:
                                                                                Text(
                                                                              "Подтвердить",
                                                                              style: TextStyle(
                                                                                fontFamily: "Nunito",
                                                                                color: Colors.white,
                                                                                fontWeight: FontWeight.w700,
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
                                                  bottomRight:
                                                      Radius.circular(8),
                                                ),
                                              ),
                                              // alignment: Alignment.center,
                                              child: SvgPicture.asset(
                                                  "assets/icons/calendar.svg"),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 139.5.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "",
                                  style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff0C57AF),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 40.0.h,
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            244, 244, 244, 1),
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 135.w - 40.h,
                                            child: TextFormField(
                                              autovalidateMode: AutovalidateMode
                                                  .onUserInteraction,
                                              onChanged: (v) {},
                                              validator: (v) {
                                                if (v!.length < 6) {
                                                  return "";
                                                }
                                                return null;
                                              },
                                              decoration: InputDecoration(
                                                hintText: "До",
                                                hintStyle: TextStyle(
                                                    fontFamily: "Nunito",
                                                    fontWeight: FontWeight.w600,
                                                    color: const Color.fromRGBO(
                                                        111, 118, 126, 1)),
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  horizontal: 15.w,
                                                  vertical: 15.h,
                                                ),
                                                errorStyle: const TextStyle(
                                                  height: 0,
                                                ),
                                                border:
                                                    const OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        14.r),
                                                                topRight: Radius
                                                                    .circular(
                                                                        14.r),
                                                              ),
                                                            ),
                                                            child: Column(
                                                              children: [
                                                                SizedBox(
                                                                  height: 10.h,
                                                                ),
                                                                SizedBox(
                                                                  height: 180.h,
                                                                  child:
                                                                      CupertinoDatePicker(
                                                                    mode: CupertinoDatePickerMode
                                                                        .date,
                                                                    minimumYear:
                                                                        1950,
                                                                    maximumYear:
                                                                        DateTime.now().year -
                                                                            16,
                                                                    initialDateTime:
                                                                        DateTime(
                                                                            2000),
                                                                    dateOrder:
                                                                        DatePickerDateOrder
                                                                            .dmy,
                                                                    onDateTimeChanged:
                                                                        (val) {},
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .symmetric(
                                                                    horizontal:
                                                                        20.w,
                                                                  ),
                                                                  child:
                                                                      Divider(
                                                                    color: const Color(
                                                                        0xff5596E2),
                                                                    thickness:
                                                                        1.4.h,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: 60.h,
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .symmetric(
                                                                      horizontal:
                                                                          28.w,
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            Navigator.pop(context);
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            padding:
                                                                                EdgeInsets.symmetric(
                                                                              horizontal: 31.5.w,
                                                                              vertical: 8.h,
                                                                            ),
                                                                            decoration: BoxDecoration(
                                                                                border: Border.all(color: const Color(0xff5596E2)),
                                                                                color: Colors.white,
                                                                                borderRadius: BorderRadius.circular(
                                                                                  12.r,
                                                                                )),
                                                                            child:
                                                                                Text(
                                                                              "Отменить",
                                                                              style: TextStyle(
                                                                                fontFamily: "Nunito",
                                                                                color: const Color(0xff5596E2),
                                                                                fontWeight: FontWeight.w700,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            Navigator.pop(context);
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            padding:
                                                                                EdgeInsets.symmetric(
                                                                              horizontal: 19.5.w,
                                                                              vertical: 8.h,
                                                                            ),
                                                                            decoration: BoxDecoration(
                                                                                color: const Color(0xff5596E2),
                                                                                borderRadius: BorderRadius.circular(
                                                                                  12.r,
                                                                                )),
                                                                            child:
                                                                                Text(
                                                                              "Подтвердить",
                                                                              style: TextStyle(
                                                                                fontFamily: "Nunito",
                                                                                color: Colors.white,
                                                                                fontWeight: FontWeight.w700,
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
                                                  bottomRight:
                                                      Radius.circular(8),
                                                ),
                                              ),
                                              // alignment: Alignment.center,
                                              child: SvgPicture.asset(
                                                  "assets/icons/calendar.svg"),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),

                                    // SizedBox(
                                    //   width: 139.5.w - 40.h,
                                    //   child: TextFormField(
                                    //     decoration: InputDecoration(
                                    //       filled: true,
                                    //       fillColor: const Color(0xffF4F4F4),
                                    //       border: OutlineInputBorder(
                                    //         borderRadius: BorderRadius.only(
                                    //           topLeft: Radius.circular(
                                    //             8.r,
                                    //           ),
                                    //           bottomLeft: Radius.circular(
                                    //             8.r,
                                    //           ),
                                    //         ),
                                    //         borderSide: BorderSide.none,
                                    //       ),
                                    //       hintText: "До",
                                    //       hintStyle: TextStyle(fontFamily: "Nunito",
                                    //           color: Color(0xff6F767E),
                                    //           fontSize: 14.sp,
                                    //           fontWeight: FontWeight.w600),
                                    //     ),
                                    //   ),
                                    // ),
                                    // Container(
                                    //   width: 40.h,
                                    //   height: 40.h,
                                    //   decoration:const BoxDecoration(
                                    //     color:  Color(0xff5596E2),
                                    //   ),
                                    // )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                const Divider(
                  color: Color(0xffF4F4F4),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 12.w,
                        horizontal: 16.w,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                        border: Border.all(
                          color: const Color(0xff5596E2),
                          width: 1.5.w,
                        ),
                      ),
                      child: Text(
                        "Добавить еще",
                        style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff5596E2),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 12.w,
                          horizontal: 20.w,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(
                            0xff5596E2,
                          ),
                          borderRadius: BorderRadius.circular(
                            8.r,
                          ),
                        ),
                        child: Text(
                          "Применить",
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
