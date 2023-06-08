import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:readmore/readmore.dart';

class  biography extends StatelessWidget {
 String content="welcome to the page of biography in this page we will discouse about the life of Mollanah Mojeb Rahman.welcome to the page of biography in this page we will discouse about the life of Mollanah Mojeb Rahman.welcome to the page of biography in this page we will discouse about the life of Mollanah Mojeb Rahman.welcome to the page of biography in this page we will discouse about the life of Mollanah Mojeb Rahman";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biography page"),
        backgroundColor: Colors.green[700],
        centerTitle: true,
        brightness: Brightness.dark,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: ReadMoreText(
            content,
            trimLines: 3,
            textAlign: TextAlign.justify,
            trimMode: TrimMode.Line,
            trimCollapsedText: " Show More ",
            trimExpandedText: " Show Less ",
            lessStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green[700],
            ),
            moreStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green[700],
            ),
            style: TextStyle(
              fontSize: 16,
              height: 2,
            ),
          ),
        ),
      ),
    );
  }
}
