import 'package:flutter/material.dart';
import 'package:river_pod/common/utils/app_colors.dart';

class AppTheme {

  static ThemeData appThemeData = ThemeData(
    brightness: Brightness.light,
    useMaterial3: false,
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: AppColors.primaryText
      )
    )
  );
}