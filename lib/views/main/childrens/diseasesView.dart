import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DiseasesView extends StatelessWidget {
  const DiseasesView({Key? key}) : super(key: key);

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
              SizedBox(),
              Text(
                "Болезни",
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
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(children: [
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
                hintStyle: GoogleFonts.nunito(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Болезни",
                  style: GoogleFonts.nunito(
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
                          InkWell(
                            onTap: () {
                              print("hi ");
                              // showGeneralDialog(
                              //   context: context,
                              //   barrierDismissible: true,
                              //   barrierLabel: MaterialLocalizations.of(context)
                              //       .modalBarrierDismissLabel,
                              //   barrierColor: Colors.black38,
                              //   transitionDuration:
                              //       const Duration(milliseconds: 200),
                              //   pageBuilder: (BuildContext buildContext,
                              //       Animation animation,
                              //       Animation secondaryAnimation) {
                              //     return Stack(
                              //       children: [
                              //         Positioned(
                              //           top: 50.h,
                              //           left: 50.h,
                              //           child: Container(
                              //             color: Colors.white,
                              //             height: 466.h,
                              //             width: MediaQuery.of(context)
                              //                     .size
                              //                     .width *
                              //                 .7,
                              //             child: Material(
                              //               child: Padding(
                              //                 padding:
                              //                     const EdgeInsets.all(8.0),
                              //                 child: Column(
                              //                   children: [
                              //                     Row(
                              //                       children: [
                              //                         Container(
                              //                           width: MediaQuery.of(
                              //                                       context)
                              //                                   .size
                              //                                   .width *
                              //                               0.4,
                              //                           height: 40.h,
                              //                           child: TextFormField(
                              //                             autovalidateMode:
                              //                                 AutovalidateMode
                              //                                     .onUserInteraction,
                              //                             onChanged: (v) {},
                              //                             decoration:
                              //                                 InputDecoration(
                              //                               border:
                              //                                   const OutlineInputBorder(),
                              //                               enabledBorder:
                              //                                   OutlineInputBorder(
                              //                                 borderSide:
                              //                                     BorderSide
                              //                                         .none,
                              //                                 borderRadius:
                              //                                     BorderRadius
                              //                                         .circular(
                              //                                             10),
                              //                               ),
                              //                               focusedBorder:
                              //                                   OutlineInputBorder(
                              //                                 borderSide:
                              //                                     BorderSide
                              //                                         .none,
                              //                                 borderRadius:
                              //                                     BorderRadius
                              //                                         .circular(
                              //                                             10),
                              //                               ),
                              //                               errorBorder:
                              //                                   OutlineInputBorder(
                              //                                 borderSide:
                              //                                     BorderSide(
                              //                                         color: Colors
                              //                                             .red,
                              //                                         width: 1),
                              //                                 borderRadius:
                              //                                     BorderRadius
                              //                                         .circular(
                              //                                             10),
                              //                               ),
                              //                               fillColor:
                              //                                   Color.fromARGB(
                              //                                       255,
                              //                                       212,
                              //                                       203,
                              //                                       203),
                              //                               filled: true,
                              //                               prefixIcon: Icon(Icons
                              //                                   .search_outlined),
                              //                               hintText: "Поиск",
                              //                               hintStyle:
                              //                                   GoogleFonts
                              //                                       .nunito(
                              //                                 fontSize: 14.sp,
                              //                                 fontWeight:
                              //                                     FontWeight
                              //                                         .w600,
                              //                                 color:
                              //                                     const Color(
                              //                                   0xff6F767E,
                              //                                 ),
                              //                               ),
                              //                               contentPadding:
                              //                                   const EdgeInsets
                              //                                           .only(
                              //                                       left: 15,
                              //                                       top: 40,
                              //                                       right: 15),
                              //                             ),
                              //                           ),
                              //                         ),
                              //                         TextButton(
                              //                           child: const Text(
                              //                               'Отменить'),
                              //                           onPressed: () {},
                              //                         )
                              //                       ],
                              //                     ),
                              //                   ],
                              //                 ),
                              //               ),
                              //             ),
                              //           ),
                              //         ),
                              //       ],
                              //     );
                              //   },
                              // );
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  isDismissible: true,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 250,
                                                child: TextFormField(
                                                  autovalidateMode:
                                                      AutovalidateMode
                                                          .onUserInteraction,
                                                  onChanged: (v) {},
                                                  decoration: InputDecoration(
                                                    border:
                                                        const OutlineInputBorder(),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors.red,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    fillColor: Color.fromARGB(
                                                        255, 212, 203, 203),
                                                    filled: true,
                                                    prefixIcon: Icon(
                                                        Icons.search_outlined),
                                                    hintText: "Поиск",
                                                    hintStyle:
                                                        GoogleFonts.nunito(
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: const Color(
                                                        0xff6F767E,
                                                      ),
                                                    ),
                                                    contentPadding:
                                                        const EdgeInsets.only(
                                                            left: 15,
                                                            top: 40,
                                                            right: 15),
                                                  ),
                                                ),
                                              ),
                                              TextButton(
                                                child: const Text('Отменить'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 24.h),
                                          Row(
                                            children: const [
                                              Icon(Icons.filter_alt),
                                              Text('Фильтр')
                                            ],
                                          ),
                                          SizedBox(height: 24.h),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: const [
                                                Text('Теги'),
                                                Text('1/5 тегов')
                                              ]),
                                          Row(
                                            children: [
                                              Container(
                                                width: 300,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            thickness: 1,
                                          ),
                                          Text('Сортировка'),
                                          SizedBox(height: 24.h),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(children: [
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .check_box_outline_blank_outlined)),
                                                    Text('Рейтингу')
                                                  ]),
                                                  Row(children: [
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .check_box_outline_blank_outlined)),
                                                    Text('Просмотрам')
                                                  ])
                                                ],
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(children: [
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .check_box_outline_blank_outlined)),
                                                    Text('Дате добавления')
                                                  ]),
                                                  Row(children: [
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .check_box_outline_blank_outlined)),
                                                    Text('Названию (A - Z)')
                                                  ])
                                                ],
                                              )
                                            ],
                                          ),
                                          Divider(
                                            thickness: 1,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(children: [
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons
                                                        .check_box_outline_blank_outlined)),
                                                Text('Рейтингу')
                                              ]),
                                              Row(children: [
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons
                                                        .check_box_outline_blank_outlined)),
                                                Text('Просмотрам')
                                              ])
                                            ],
                                          ),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                ElevatedButton(
                                                  child: Text('Сбросить'),
                                                  onPressed: () {},
                                                ),
                                                ElevatedButton(
                                                  child: Text('Применить'),
                                                  onPressed: () {},
                                                ),
                                              ])
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: Container(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.filter_alt,
                                    size: 16,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    "Фильтр",
                                    style: GoogleFonts.nunito(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
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
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .50,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return InkWell(
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
                                    style: GoogleFonts.nunito(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        "Термин «простуда» не является медицинским, однако он настолько приходится на холодное время года. Eтся присоединение бактериальной или вирусной инфекции.Возможно также совокупное воздействие этих микроорганизмов, когда на фоне ослабления иммунитета вследствие флоры.",
                                    style: GoogleFonts.nunito(
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
                                      style: GoogleFonts.nunito(
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
                                      style: GoogleFonts.nunito(
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
                                      style: GoogleFonts.nunito(
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
                    );
                  },
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
