import 'package:flutter/material.dart';
import 'rounded_icon_button.dart';

class NumberIncrementer extends StatelessWidget {
  NumberIncrementer({
    @required this.onIncrement,
    @required this.onDecrement,
  });

  final Function onIncrement;
  final Function onDecrement;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RoundedIconButton(
          icon: Icons.remove,
          onPressed: onDecrement,
          size: 48.0,
        ),
        SizedBox(
          width: 16,
        ),
        RoundedIconButton(
          icon: Icons.add,
          onPressed: onIncrement,
          size: 48.0,
        ),
      ],
    );
  }
}
