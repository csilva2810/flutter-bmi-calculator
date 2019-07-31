import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({
    this.onTap,
    this.text,
  });

  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        margin: EdgeInsets.only(top: 8),
        color: Colors.pink,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
