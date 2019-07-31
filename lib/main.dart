import 'package:flutter/material.dart';
import 'input_page.dart';
import 'app_theme.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: InputPage(),
    );
  }
}
