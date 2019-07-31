import 'package:flutter/material.dart';

const Color appPrimaryColor = Color(0xFF090c21);
const Color appAccentColor = Color(0xFFeb4856);

final ThemeData appTheme = ThemeData.dark().copyWith(
  primaryColor: appPrimaryColor,
  accentColor: appAccentColor,
  scaffoldBackgroundColor: appPrimaryColor,
  sliderTheme: SliderThemeData(
    thumbColor: appAccentColor,
    overlayColor: appAccentColor.withAlpha(50),
    activeTrackColor: appAccentColor,
    inactiveTrackColor: Colors.white.withAlpha(90),
  ),
);
