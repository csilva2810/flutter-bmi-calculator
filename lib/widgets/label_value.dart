import 'package:flutter/material.dart';
import '../styles.dart';

class LabelValue extends StatelessWidget {
  final String label;
  final String value;
  final String suffix;

  LabelValue({this.label, this.value, this.suffix});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
          style: labelTextStyle,
        ),
        Row(
          textBaseline: TextBaseline.alphabetic,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: <Widget>[
            Text(
              value,
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            suffix != null && suffix != '' ? Text(
              suffix,
              style: labelTextStyle,
            ) : Container()
          ],
        ),
      ],
    );
  }
}
