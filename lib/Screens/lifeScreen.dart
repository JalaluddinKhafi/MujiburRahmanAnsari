import 'package:flutter/material.dart';
import 'dart:ui';
class  biography extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("زندگی نامه مولانا انصاری (رح)"),
        toolbarHeight: 50,
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(

                        alignment: Alignment.center,
                          padding:EdgeInsets.all(15),
                        width: 300,
                        height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20.0),
                            ),
                            image: DecorationImage(
                                image: AssetImage('assets/images/picture_1.jpg'),
                                fit:BoxFit.cover
                            ),
                          )
                      ),
                  SizedBox(height: 20,),
                 Text(
                   "مختصری از زندگی نامه مولوی مجیب الرحمن انصاری رحمة‌الله‌عليه",
                   textAlign: TextAlign.center,
                   style: TextStyle(

                   ),


                 ),
                ],
        ),

    );
  }
}
