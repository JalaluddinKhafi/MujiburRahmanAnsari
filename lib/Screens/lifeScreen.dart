import 'package:flutter/material.dart';
import 'dart:ui';

class biography extends StatefulWidget {
  @override
  State<biography> createState() => _biographyState();
}

class _biographyState extends State<biography> {
  final ScrollController _firstController = ScrollController();
  List<String> biographyText=[
    "مولانا  مجیب الرحمن انصاری فرزند خواجه محمد رفیق انصاری ولدیت خواجه محمد صدیق انصاری، در سال ۱۳۶۲ در یك خانواده متدین در گازرگاه شریف هرات دیده به جهان گشود",
    " ",
    "مولانا مجیب الرحمن انصاری از لحاظ نسب به خواجه عبدالله انصاری هروی و سرانجام به ابو ایوب انصاری می رسد.",
    " ",
    "مولانا انصاری در سن ۱۳ سالگی مشغول حفظ كلام الله و در سن ۱۵  سالگی، حفظ كلام خدا را به اتمام رسانیده است. او با هوش و ذكاوت خدا دادی كه داشت در مدت دو سال حفظ كلام پاك الله را به اتمام رسانید. بعد به فراگرفتن علوم دیگر دینی و اجتماعی پرداخت  و در سن ۱۹ سالگی بصفت خطیب مسجد جامع گازرگاه شریف از جانب مردم و جامعه‌ی روحانیت برگزیده شد.",
    "",
    "مولانا انصاری در سال ۱۳۸۴ از فرا گیری علوم دینی و اجتماعی فارغ شد و در همان سال عازم خانه خداوند (جل‌جلاله) گردید و بعد از برگشت این سفر مبارك در دارالعلوم عالی انصار مشغول خواندن علم حدیث شد. كه این روند تا سال ۱۳۸۹ دوام نمود",
    "",
    "الحاج مولانا  مجیب الرحمان انصاری  مصروف تدریس در دارالعلوم عالی انصار واقع در گازرگاه شریف بوده و تبلیغ مسایل و احكام دینی از طرف وی برای شهروندان كشور به‌گونه جدی به جریان بود  هم‌چنان بكار تبلیغ دین اسلام پرداخته بود",
    "",
    "مولوی مجیب الرحمن انصاری در روز جمعه  (۱۱ سنبله ۱۴۰۱ش) پیش از رسیدن به مسجد جامع گازرگاه شریف توسط یکی از نیروهای گروه داعش که به منظور احوال‌پرسی نزد ایشان آمده و خود را منفجر کردند به شهادت رسانیدند.",
    "",
    "إنا لله وإنا اليه راجعون",
      ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("زندگی نامه مولانا انصاری (رح)"),
        toolbarHeight: 50,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 1,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(10.0),
                      topRight:Radius.circular(10.0),
                      bottomLeft:Radius.circular(90.0),
                      bottomRight:Radius.circular(10.0),

                    ),

                    image: DecorationImage(
                        image: AssetImage('assets/images/biography.jpg'),
                        fit: BoxFit.cover),
                  ),
              ),
              SizedBox(height: 10,),
              Text(
                "مختصری از زندگی نامه شهد مولانا مجیب الرحمن انصاری رحمة‌الله‌عليه",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                "..........................................................",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                padding: EdgeInsets.all(10),
                itemCount: biographyText.length,
                itemBuilder: (context, index){

                 //final item=biographyText[index];
                return Text(biographyText[index],textAlign: TextAlign.right,
                  style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,color: Colors.indigo,
                  ),
                );
              },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
