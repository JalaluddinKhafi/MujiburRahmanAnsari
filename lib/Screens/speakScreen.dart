import 'package:flutter/material.dart';
class spScreen extends StatefulWidget {
  const spScreen({Key? key}) : super(key: key);

  @override
  State<spScreen> createState() => _spScreenState();
}

class _spScreenState extends State<spScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(
        child: Center(
          child: Text("this is drawer"),
        ),
      ),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
      ),
    );
  }
}

