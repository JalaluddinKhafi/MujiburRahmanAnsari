import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tfScreen extends StatefulWidget {

  @override
  State<tfScreen> createState() => _tfScreenState();
}

class _tfScreenState extends State<tfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(
     //    leading: Icon(Icons.arrow_back),
     //    title: Text(
     //      'تفسیر قرآنکریم',
     //    ),
     //    actions: [
     //      Icon(CupertinoIcons.chat_bubble_text),
     //      SizedBox(
     //        width: 4,
     //      ),
     //      Padding(
     //        padding: const EdgeInsets.fromLTRB(8, 0, 16, 0),
     //        child: Icon(CupertinoIcons.ellipsis_vertical),
     //      ),
     //    ],
     //  ),
      body:Column(
        children: [
                Row(
                  children: [
                    Text(
                        'تفسیر قرآنکریم',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}