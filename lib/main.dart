import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:profile/Screens/speakScreen.dart';
import 'Screens/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(
      ),
    );
  }
}


