import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile/Screens/pdfView.dart';
class achievScreen extends StatefulWidget {

  @override
  State<achievScreen> createState() => _achievScreenState();
}

class _achievScreenState extends State<achievScreen> {
  List pdfInfo = [];
  _initData() async {
    await DefaultAssetBundle.of(context)
        .loadString("json/pdfInfo.json")
        .then((value) {
      setState(() {
        pdfInfo = json.decode(value);
      });
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
      appBar: AppBar(
        title: Text('آثار شهید مولانا انصاری (رح)'),
        actions: [
          Icon(CupertinoIcons.chat_bubble_text),
          SizedBox(
            width: 4,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 16, 0),
            child: Icon(CupertinoIcons.ellipsis_vertical),
          ),
        ],
      ),
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 20, 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/picture_1.jpg',
                    width: 200,
                    height: 150,
                  ),
                ),
              ),

                  Text(
                    'سه آثار از شهید مولانا انصاری (رح)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )

            ],
          ),
          Text(".............................................",),
          SizedBox(height: 50,),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: _listview(),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }



  _listview (){
    return ListView.builder(
      itemCount: pdfInfo.length,
      itemBuilder: (_, int index) {
        return GestureDetector(
          onTap: () {
            Get.to(()=> pdfView(index:index));
            debugPrint(index.toString());
            },
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        pdfInfo[index]["image"],
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Expanded(
                      child: Container(
                      ),
                    ),
                    Text(
                      pdfInfo[index]["title"],
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5,),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
}
}