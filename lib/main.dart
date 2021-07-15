import 'package:flutter/material.dart';
import 'package:tripapplication/ui/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trip Application',
      theme: ThemeData(
        buttonColor: Color(0xffef6748),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Trip Application'),
    );
  }
}


