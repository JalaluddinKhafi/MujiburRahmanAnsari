import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class spScreen extends StatefulWidget {
  const spScreen({Key? key}) : super(key: key);

  @override
  State<spScreen> createState() => _spScreenState();
}

class _spScreenState extends State<spScreen> {

  List videoInfo=[];
  _initData(){
    DefaultAssetBundle.of(context).loadString("json")
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.teal
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70,left: 30,right: 30),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.arrow_back_ios,size: 20,color: Colors.white,),
                      Expanded(child: Container(),),
                      Icon(Icons.info_outline,size: 20,color: Colors.white,),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "سخنرانی های شهید مولانا انصاری (رح)",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("تعداد سخنرانی های شهید مولانا انصاری (رح)در هر بخشی موجود است, ولی درین برنامه تعداد کمی از آنهارا ما آوردیم",
                  textAlign:TextAlign.right,
                  )
                ],
              ),
            ),
            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(70),
                )

              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

