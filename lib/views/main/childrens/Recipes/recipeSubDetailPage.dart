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
                  "Рецепты",
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
                            "Ибуклин",
                            style: GoogleFonts.nunito(
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
                                  style: GoogleFonts.nunito(
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
                                  style: GoogleFonts.nunito(
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
                        'Описание',
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
                      labelPadding: EdgeInsets.all(2),
                      // avatar: CircleAvatar(
                      //   backgroundColor: Colors.grey.shade800,
                      //   child: const Text('AB'),
                      // ),
                      label: Text(
                        'Характеристики',
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
                      labelPadding: EdgeInsets.all(2),
                      // avatar: CircleAvatar(
                      //   backgroundColor: Colors.grey.shade800,
                      //   child: const Text('AB'),
                      // ),
                      label: Text(
                        'Инструкция',
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
                  'Условия хранения Препарат следует хранить в недоступном для детей месте при температуре не выше 30°С. Взаимодействие с другими препаратами При одновременном применении панкреатина с препаратами железа возможно снижение всасывания последних.  Одновременное применение антацидных средств, содержащих кальций карбонат и/или магния гидроксид, может привести к снижению эффективности панкреатина.  Состав Активное вещество:панкреатин с минимальной ферментативной активностью:липазы 3500 ЕД Ph.Eur;амилазы 4200 ЕД Ph.Eur;протеаз 250 ЕД Ph.Eur;  Вспомогательные вещества: целлюлоза микрокристаллическая, натрия карбоксиметилкрахмал (тип А), кремния диоксид коллоидный, магния стеарат.  Состав оболочки: тальк, гипромеллоза, азорубиновый лак (Е122), симетикона эмульсия 30% (сухая масса), полиакрилат дисперсия 30% (сухая масса), титана диоксид (Е171), макрогол 6000.  Побочное действие Аллергические реакции, диарея или запор, тошнота, дискомфорт в эпигастральной области.  При длительном применении в высоких дозах возможно развитие гиперурикозурии, повышение уровня мочевой кислоты в плазме крови.  В единичных случаях у больных, страдающих муковисцидозом, наблюдается образование стриктур в илеоцекальной области после приема высоких доз.  Передозировка Данных о случаях передозировки и интоксикации препаратом нет.  Возможны: гиперурикозурия, гиперурикемия, у детей - запоры.  Лечение: отмена препарата, симптоматическая терапия.  Способ применения и дозы Доза определяется индивидуально в зависимости от степени нарушения пищеварения.  Взрослым: по 1-2 таб. перед едой, не разжевывая и запивая водой. При необходимости дополнительно во время еды принимают еще 1-4 таб.  У детей препарат применяют по назначению врача.  Продолжительность лечения может варьироваться от нескольких дней (при нарушении процесса пищеварения вследствие погрешностей в диете) до нескольких месяцев или лет (при необходимости постоянной заместительной терапии).  Противопоказания Повышенная чувствительность к компонентам препарата; острый панкреатит; обострение хронического панкреатита.  Применение при беременности и в период лактации Безопасность применения панкреатина при беременности изучена недостаточно. Применение возможно в случаях, когда ожидаемая польза для матери превышает потенциальный риск для плода.  Показания к применению Недостаточность внешнесекреторной функции поджелудочной железы, (хронический панкреатит, муковисцидоз); хронические воспалительно-дистрофические заболевания желудка, кишечника, печени, желчного пузыря. Состояния после резекции или облучения этих органов, сопровождающиеся нарушениями переваривания нищи, метеоризмом, диареей (в составе комбинированной терапии); для улучшения переваривания пиши у пациентов с нормальной функцией ЖКТ в случае погрешностей в питании; подготовка к рентгенологическому и ультразвуковому исследованию органов брюшной полости.  Фармакокинетика Таблетки Мезим покрыты кислотоустойчивой оболочкой, которая не растворяется под действием соляной кислоты желудка и, тем самым, предохраняет содержащиеся в препарате энзимы от инактивации. Растворение оболочки и высвобождение ферментов происходит при значениях рН близких к нейтральному или слабощелочному.  Фармакологическое действие Препарат компенсирует недостаточность внешнесекреторной функции поджелудочной железы.  Входящие в состав панкреатина ферменты липаза, амилаза и протеаза облегчают переваривание жиров, углеводов и белков, что способствует их более полному всасыванию в тонком кишечнике.  Описание товара Таблетки, покрытые оболочкой розового цвета, плоскоцилиндрические, с почти плоскопараллельными поверхностями и скошенными кромками, с характерным запахом панкреатина. Недостаточность секреторной и переваривающей способности желудка и кишечника.  Срок годности от даты изготовления 3 года  Форма выпуска Таблетки, покрытые оболочкой розового цвета, плоскоцилиндрические, с почти плоскопараллельными поверхностями и скошенными кромками, с характерным запахом панкреатина.  1 таб. Активное вещество:панкреатин с минимальной ферментативной активностью:липазы 3500 ЕД Ph.Eur;амилазы 4200 ЕД Ph.Eur;протеаз 250 ЕД Ph.Eur;  Вспомогательные вещества: целлюлоза микрокристаллическая, натрия карбоксиметилкрахмал (тип А), кремния диоксид коллоидный, магния стеарат.  Состав оболочки: тальк, гипромеллоза, азорубиновый лак (Е122), симетикона эмульсия 30% (сухая масса), полиакрилат дисперсия 30% (сухая масса), титана диоксид (Е171), макрогол 6000.  20 шт. - блистеры (1) - пачки картонные.  20 шт. - блистеры (2) - пачки картонные.  20 шт. - блистеры (4) - пачки картонные.  20 шт. - блистеры (5) - пачки картонные.',
                  style: GoogleFonts.nunito(
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
