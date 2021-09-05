import 'package:application/share/utils/colorStyle.dart';
import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: AppColors.primary,
  accentColor: AppColors.primaryDark,
  splashColor: AppColors.primary,
  highlightColor: AppColors.primary,
  fontFamily: 'roboto',
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  ),
);
