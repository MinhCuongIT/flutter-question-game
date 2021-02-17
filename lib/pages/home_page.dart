import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var index = 1;
  var temp = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          do {
            temp = Random().nextInt(5) + 1;
          } while (temp == index);
          setState(() {
            index = temp;
          });
        },
        child: Container(
          color: Colors.blue[300],
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/ball$index.png'),
            ),
          ),
        ),
      ),
    );
  }
}
