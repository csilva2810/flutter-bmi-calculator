import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  AppCard({
    this.color,
    this.child,
    this.onTap,
  });

  final Color color;
  final Widget child;
  final Function onTap;

  static final Color activeColor = Color(0xFF1D1F33);
  static final Color inactiveColor = Color(0xFF111328);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color ?? activeColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}
