import 'package:flutter/material.dart';
import 'package:fluttersrcintro/screen/first_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'IMFell',
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}
