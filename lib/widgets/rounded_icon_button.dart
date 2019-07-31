import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    this.color = const Color(0xFF4C4F5E),
    this.icon,
    this.onPressed,
    this.size = 56.0,
  });

  final Color color;
  final IconData icon;
  final Function onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: color,
      child: Icon(icon),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: size,
        height: size,
      ),
      elevation: 0.0,
    );
  }
}
