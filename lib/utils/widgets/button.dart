import 'dart:ui';

import 'package:agri_ai/values/colors.dart';
import 'package:flutter/material.dart';

Widget btnFlatButtonWidget({
  required VoidCallback onPressed,
  double width = 310,
   double height = 55,
  Color gbColor = Colors.white,
  String? title,
  Color fontColor = AppColors.primaryElement,
  double fontSize = 16,
  String fontName = "Montserrat",
  FontWeight fontWeight = FontWeight.w400,
}) {
  return Container(
    width: width,
    height: height,
    margin: EdgeInsets.symmetric(vertical: 10),
    child: TextButton(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(TextStyle(
          fontSize: 16,
        )),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.focused) && !states.contains(MaterialState.pressed)) {
            return Colors.deepPurple;
          }
          return fontColor;
        }),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.blue[200];
          }
          return gbColor;
        }),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ))
      ),
      onPressed: onPressed, child: Text(
        title!,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: fontColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
          height: 1,
        ),
      )),
  );
}