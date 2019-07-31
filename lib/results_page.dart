import 'package:bmi_calculator/styles.dart';
import 'package:bmi_calculator/widgets/app_card.dart';
import 'package:flutter/material.dart';

import 'widgets/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.bmi});

  final double bmi;

  String getBMIRangeStatus() {
    if (bmi < 20) {
      return 'BELOW NORMAL';
    }

    if (bmi <= 25) {
      return 'NORMAL';
    }

    return 'ABOVE NORMAL';
  }

  String getBMIDescriptionText() {
    if (bmi >= 20 && bmi <= 25) {
      return 'You have a normal body weight. Good job!';
    }

    return 'Your body weight is out of the normal range. Consider seeing a doctor.';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Your Result',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: AppCard(
                        child: FractionallySizedBox(
                          widthFactor: 0.7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    getBMIRangeStatus(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      color: Color(0xFF60cf90),
                                    ),
                                  ),
                                  Text(
                                    bmi.toStringAsFixed(1),
                                    style: TextStyle(
                                      fontSize: 80.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.0),
                              Column(
                                children: <Widget>[
                                  Text(
                                    'Normal BMI range:',
                                    style: labelTextStyle,
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    '18,5 - 25 kg/m2',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 32.0),
                              Text(
                                getBMIDescriptionText(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              text: 'RE-CALCULATE YOUR BMI',
            ),
          ],
        ),
      ),
    );
  }
}
