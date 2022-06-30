import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DiseasesDetailPage extends StatefulWidget {
  const DiseasesDetailPage({Key? key}) : super(key: key);

  @override
  State<DiseasesDetailPage> createState() => _DiseasesDetailPageState();
}

class _DiseasesDetailPageState extends State<DiseasesDetailPage> {
  List<Map<String, dynamic>> _items = List.generate(
      10,
      (index) => {
            'id': index,
            'title': 'Item $index',
            'description':
                'This is the description of the item $index. Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            'isExpanded': false
          });

  List<Map<String, dynamic>> diseaseList = [
    {
      'id': 0,
      'title': 'Описание болезни',
      'description':
          'Термин «простуда» не является медицинским, однако он настолько часто употребляется, что требует более тщательного рассмотрения. Обычно, говоря о простуде, пациент связывает свое заболевание с переохлаждением, тем более пик заболеваемости приходится на холодное время года. Однако переохлаждение является лишь триггером, причиной ослабления иммунитета и развития заболевания. На фоне физического стресса наблюдается присоединение бактериальной или вирусной инфекции.  Возможно также совокупное воздействие этих микроорганизмов, когда на фоне ослабления иммунитета вследствие вирусной инфекции начинается активное размножение бактериальной флоры.',
      'isExpanded': false
    },
    {
      'id': 1,
      'title': 'Причины возникновения',
      'description':
          'Термин «простуда» не является медицинским, однако он настолько часто употребляется, что требует более тщательного рассмотрения. Обычно, говоря о простуде, пациент связывает свое заболевание с переохлаждением, тем более пик заболеваемости приходится на холодное время года. Однако переохлаждение является лишь триггером, причиной ослабления иммунитета и развития заболевания. На фоне физического стресса наблюдается присоединение бактериальной или вирусной инфекции.  Возможно также совокупное воздействие этих микроорганизмов, когда на фоне ослабления иммунитета вследствие вирусной инфекции начинается активное размножение бактериальной флоры.',
      'isExpanded': false
    },
    {
      'id': 2,
      'title': 'Симптомы',
      'description':
          'Термин «простуда» не является медицинским, однако он настолько часто употребляется, что требует более тщательного рассмотрения. Обычно, говоря о простуде, пациент связывает свое заболевание с переохлаждением, тем более пик заболеваемости приходится на холодное время года. Однако переохлаждение является лишь триггером, причиной ослабления иммунитета и развития заболевания. На фоне физического стресса наблюдается присоединение бактериальной или вирусной инфекции.  Возможно также совокупное воздействие этих микроорганизмов, когда на фоне ослабления иммунитета вследствие вирусной инфекции начинается активное размножение бактериальной флоры.',
      'isExpanded': false
    },
    {
      'id': 3,
      'title': 'Диагностика',
      'description':
          'Термин «простуда» не является медицинским, однако он настолько часто употребляется, что требует более тщательного рассмотрения. Обычно, говоря о простуде, пациент связывает свое заболевание с переохлаждением, тем более пик заболеваемости приходится на холодное время года. Однако переохлаждение является лишь триггером, причиной ослабления иммунитета и развития заболевания. На фоне физического стресса наблюдается присоединение бактериальной или вирусной инфекции.  Возможно также совокупное воздействие этих микроорганизмов, когда на фоне ослабления иммунитета вследствие вирусной инфекции начинается активное размножение бактериальной флоры.',
      'isExpanded': false
    },
    {
      'id': 4,
      'title': 'Лечение',
      'description':
          'Термин «простуда» не является медицинским, однако он настолько часто употребляется, что требует более тщательного рассмотрения. Обычно, говоря о простуде, пациент связывает свое заболевание с переохлаждением, тем более пик заболеваемости приходится на холодное время года. Однако переохлаждение является лишь триггером, причиной ослабления иммунитета и развития заболевания. На фоне физического стресса наблюдается присоединение бактериальной или вирусной инфекции.  Возможно также совокупное воздействие этих микроорганизмов, когда на фоне ослабления иммунитета вследствие вирусной инфекции начинается активное размножение бактериальной флоры.',
      'isExpanded': false
    },
    {
      'id': 5,
      'title': 'Препараты',
      'description':
          'Термин «простуда» не является медицинским, однако он настолько часто употребляется, что требует более тщательного рассмотрения. Обычно, говоря о простуде, пациент связывает свое заболевание с переохлаждением, тем более пик заболеваемости приходится на холодное время года. Однако переохлаждение является лишь триггером, причиной ослабления иммунитета и развития заболевания. На фоне физического стресса наблюдается присоединение бактериальной или вирусной инфекции.  Возможно также совокупное воздействие этих микроорганизмов, когда на фоне ослабления иммунитета вследствие вирусной инфекции начинается активное размножение бактериальной флоры.',
      'isExpanded': false
    }
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
                "Болезни",
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80.h,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Простуда',
                      style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
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
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 16.h),
                    ExpansionPanelList(
                      expandedHeaderPadding: EdgeInsets.zero,
                      //expandedHeaderPadding: EdgeInsets.all(24),
                      elevation: 3,
                      // Controlling the expansion behavior
                      expansionCallback: (index, isExpanded) {
                        setState(() {
                          diseaseList[index]['isExpanded'] = !isExpanded;
                        });
                      },
                      animationDuration: Duration(milliseconds: 600),
                      children: diseaseList
                          .map(
                            (item) => ExpansionPanel(
                              canTapOnHeader: true,
                              backgroundColor: item['isExpanded'] == true
                                  ? Colors.white
                                  : Colors.white,
                              headerBuilder: (_, isExpanded) => Container(
                                  padding: EdgeInsets.only(
                                      top: 12, left: 12, right: 12),
                                  child: Text(
                                    item['title'],
                                    style: TextStyle(
                                      fontFamily: "Nunito",
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff0C57AF),
                                    ),
                                  )),
                              body: Container(
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
                                padding: EdgeInsets.only(
                                    left: 12, right: 12, bottom: 12),
                                child: Text(item['description']),
                              ),
                              isExpanded: item['isExpanded'],
                            ),
                          )
                          .toList(),
                    ),
                    SizedBox(height: 24),
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
                                            color:
                                                Colors.black.withOpacity(0.1),
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
                    SizedBox(height: 16),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        print("Pushed to DiseasesDetailPage again");
                        //  Navigator.pushNamed(context, "/DiseasesDetailPage");
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
