import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticlesReadView extends StatefulWidget {
  const ArticlesReadView({Key? key}) : super(key: key);

  @override
  State<ArticlesReadView> createState() => _ArticlesReadViewState();
}

class _ArticlesReadViewState extends State<ArticlesReadView> {
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
              Container(
                width: 36.w,
                height: 36.w,
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
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                ),
                child: Column(
                  children: [
                    Text(
                      "Название выпущенной",
                      style: TextStyle(
                        fontFamily: "Nunito",
                        color: Colors.black,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    // SizedBox(height: 8.h,),
                    Text(
                      "научной работы",
                      style: TextStyle(
                        fontFamily: "Nunito",
                        color: Colors.black,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Азизбек Азизов · Med Shox Center",
                          style: TextStyle(
                            fontFamily: "Nunito",
                            color: const Color(0xff050505),
                            fontSize: 12.5.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "12.02.2022",
                          style: TextStyle(
                            fontFamily: "Nunito",
                            color: const Color(0xff050505),
                            fontSize: 12.5.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      width: 327.w,
                      height: 138.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/profile.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 2.w,
                      ),
                      width: 327.w,
                      child: Text(
                        "Цель. Оценить эффективность инъекционного использования плазмы, обогащенной тромбоцитами, при лечении ран у экспериментальных животных с ожогами. Материал и методы. Эксперимент проведен на 30 половозрелых крысах-самцах породы Wistar, которые, после моделирования инфицированного ожога кипятком и иссечения на 2-е сутки некротических тканей до «кровяной росы», гемостаза, были разделены на основную и контрольную группы в зависимости от выбранной стратегии дальнейшего лечения. Животным контрольной группы (15 крыс) раневой дефект обрабатывали и накладывали повязки, пропитанные 0,02% раствором декаметоксина. Животным основной группы (15 крыс) дополнительно проводили инъекции в область раны инъекций плазмы, обогащенной тромбоцитами, на 1, 3, 5 сутки после некрэктомии. Остаток этой плазмы путем аппликации наносили на раневую поверхность с последующим закрытием поливинилхлоридной пленкой и марлевой повязкой. Перевязки проводились ежедневно. Изучение предусматривало гистологическое исследование участка раны и окружающих тканей, забор которых осуществлялся на 1, 3, 7, 14-е сутки после удаления некротизированных тканей. Результаты. У животных основной группы, лечение которых предусматривало использование плазмы, обогащенной тромбоцитами, уже на 3 сутки после некрэктомии в области раны определяли уменьшение глубины повреждений, которые распространялись только до подкожной клетчатки, снижение активности воспалительной реакции в тканях с последующей пролиферацией молодого эпидермиса и почти полным заживлением раневого дефекта до 14-х суток. Патологические изменения в тканях участка повреждения животных контрольной группы были более выраженными, с признаками повреждения до мышц. Кроме того, в течение всего периода наблюдения в этой группе животных сохранялась интенсивная воспалительная реакция с низкой пролиферативной активностью. Заключение. Экспериментально подтверждена эффективность инъекционного использования плазмы, обогащенной тромбоцитами, как элемента комплексного местного лечения ожоговых ран у крыс. ",
                        softWrap: true,
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                          fontFamily: "Nunito",
                          color: const Color(0xff6F767E),
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                        ),
                      ),
                    )
                  ],
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
