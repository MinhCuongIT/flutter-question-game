import 'package:flutter/material.dart';
import 'package:magic_8_ball/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic 8 Balls',
      theme: ThemeData(
        primaryColor: Colors.blueAccent
      ),
      home: HomePage(),
    );
  }
}
