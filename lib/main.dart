import 'file:///C:/MyProjects/FlutterProjects/BMICalculator/bmi_calculator/lib/screen/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0e21),
        scaffoldBackgroundColor:Color(0xff0a0e21),
      ),
      home: HomePage(),
    );
  }
}

