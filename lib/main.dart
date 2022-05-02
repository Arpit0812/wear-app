import 'package:flutter/material.dart';
import 'package:wear_app/page1.dart';
import 'package:wear_app/page2.dart';
import 'package:wear_app/page3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: page3(),
    );
  }
}
