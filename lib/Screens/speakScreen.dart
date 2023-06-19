import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class spScreen extends StatefulWidget {
  const spScreen({Key? key}) : super(key: key);

  @override
  State<spScreen> createState() => _spScreenState();
}

class _spScreenState extends State<spScreen> {
  List videoInfo = [];
  _initData() async {
    await DefaultAssetBundle.of(context)
        .loadString("json/videoInfo.json")
        .then((value) {
      videoInfo = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.teal),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                            color: Colors.white,
                          )),
                      Expanded(
                        child: Container(),
                      ),
                      Icon(
                        Icons.info_outline,
                        size: 20,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "سخنرانی های شهید مولانا انصاری (رح)",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "تعداد سخنرانی های شهید مولانا انصاری (رح)در هر بخشی موجود است, ولی درین برنامه تعداد کمی از آنهارا ما آوردیم",
                    textAlign: TextAlign.right,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(70),
                    ),
                ),
              child: Column(
                children: [
                  Expanded(
                      child: _listView(),
                  
                  ),
                ],
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _listView(){
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
      itemCount:videoInfo.length,
      itemBuilder: (_,int index){
        return GestureDetector(
          onTap: (){
            debugPrint(index.toString());
          },
          child: _buildCard(index) ,
        );
      },);
  }


  _buildCard(int index){
    return Container(
      height: 135,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 150,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(
                          videoInfo[index]["thumbnail"]
                      ),
                      fit: BoxFit.cover
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    videoInfo[index]["title"],
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(top:3),
                    child: Text(
                      videoInfo[index]["time"],
                      style: TextStyle(
                          color: Colors.grey[500]
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 18,),
          Row(
            children: [
              Container(
                width: 80,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "15s rest",style: TextStyle(
                    color: Color(0xFF839fed),
                  ),
                  ),
                ),
              ),
              Row(
                children: [
                  for(int i=0;i<70;i++)
                    i.isEven?Container(
                      width: 3,
                      height: 1,
                      decoration: BoxDecoration(
                        color: Color(0xFF839fed),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ):Container(
                      width: 3,
                      height: 1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    )
                ],
              )
            ],
          ),

        ],
      ),
    );
  }
}
