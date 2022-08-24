import 'package:bmi_calculator/InputPage.dart';
import 'package:bmi_calculator/ResultPage.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/WidgetsCreater.dart';
import 'package:bmi_calculator/InputPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



void main() {

  runApp(const BMUCalculator());
}

class BMUCalculator extends StatelessWidget {
  const BMUCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => ResultPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'BMi calculator',
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: '/',
    );
  }
}

