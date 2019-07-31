import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/app_card.dart';
import 'widgets/icon_text.dart';
import 'widgets/label_value.dart';
import 'widgets/number_incrementer.dart';
import 'results_page.dart';

const double bottomContainerHeight = 80.0;
const Color bottomContainerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;
  int weight = 70;
  int height = 180;
  int age = 20;

  Color getMaleCardColor() {
    return selectedGender == Gender.male
        ? AppCard.activeColor
        : AppCard.inactiveColor;
  }

  Color getFemaleCardColor() {
    return selectedGender == Gender.female
        ? AppCard.activeColor
        : AppCard.inactiveColor;
  }

  void setSelectedGender(Gender gender) {
    setState(() {
      selectedGender = gender;
    });
  }

  double calculateBMI() {
    double heightInMetters = height / 100;

    return weight / (heightInMetters * heightInMetters);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: AppCard(
                        color: getMaleCardColor(),
                        onTap: () {
                          setSelectedGender(Gender.male);
                        },
                        child: IconText(
                          icon: FontAwesomeIcons.mars,
                          text: 'MALE',
                        ),
                      ),
                    ),
                    Expanded(
                      child: AppCard(
                        color: getFemaleCardColor(),
                        onTap: () {
                          setSelectedGender(Gender.female);
                        },
                        child: IconText(
                          icon: FontAwesomeIcons.venus,
                          text: 'FEMALE',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: AppCard(
                  color: AppCard.activeColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      LabelValue(
                        label: 'HEIGHT',
                        value: height.toString(),
                        suffix: 'cm',
                      ),
                      Slider(
                        value: height.toDouble(),
                        max: 220.0,
                        min: 120.0,
                        onChanged: (double value) {
                          setState(() {
                            height = value.round();
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: AppCard(
                        color: AppCard.activeColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            LabelValue(
                              label: 'Weight',
                              value: weight.toString(),
                            ),
                            NumberIncrementer(
                              onIncrement: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              onDecrement: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: AppCard(
                        color: AppCard.activeColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            LabelValue(
                              label: 'Age',
                              value: age.toString(),
                            ),
                            NumberIncrementer(
                              onIncrement: () {
                                setState(() {
                                  age++;
                                });
                              },
                              onDecrement: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(bmi: calculateBMI()),
                ),
              ),
              text: 'CALCULATE YOUR BMI',
            ),
          ],
        ),
      ),
    );
  }
}
