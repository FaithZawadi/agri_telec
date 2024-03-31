import 'package:agri_ai/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class AppTheme {
  final horizontalMargin = 16.0.w;
  final radius = 10.h;

  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    primaryColor: AppColors.primaryBackground,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: AppColors.primaryBackground,
    ),
    
    appBarTheme:  const AppBarTheme(
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.primaryBackground,
      ),
      backgroundColor: AppColors.primaryBackground,
      iconTheme: IconThemeData(
        color: AppColors.scaffoldBackground,
      ),
      titleTextStyle: TextStyle(
        color: AppColors.scaffoldBackground,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      toolbarTextStyle: TextStyle(
        color: AppColors.primaryText,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
    bottomNavigationBarTheme:  const BottomNavigationBarThemeData(
      backgroundColor: AppColors.scaffoldBackground,
      unselectedLabelStyle: TextStyle(fontSize: 12),
      selectedLabelStyle: TextStyle(fontSize: 12),
      unselectedItemColor: Color.fromRGBO(76, 76, 76, 1),
      selectedItemColor: AppColors.primaryBackground,
    ),
    tabBarTheme:  const TabBarTheme(
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: AppColors.accentColor,
      unselectedLabelColor: AppColors.secondaryText,
    ),
  );
}