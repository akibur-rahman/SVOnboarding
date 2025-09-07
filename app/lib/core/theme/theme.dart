import 'package:flutter/material.dart';
import 'package:svonboarding/core/constants/colors.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    primaryColor: AppColors.primaryColor,
    fontFamily: 'Display',
  );
}
