import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class achievScreen extends StatefulWidget {

  @override
  State<achievScreen> createState() => _achievScreenState();
}

class _achievScreenState extends State<achievScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jalaluddin khafi'),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 20, 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/picture_1.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    'سه آثار از شهید مولانا انصاری (رح)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          Text(".............................................",),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/quran.jpg',
                      height: 100,
                      width: 100,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'تفسیر قرآنکریم',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5,),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}