import 'dart:ui';

import 'package:flutter/material.dart';

Color primary = const Color(0xFF3b3b3b);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color orangeColor = const Color(0xFFFF5733);
  static Color lightBlueColor = const Color(0xFF00B5DA);
  static Color sheetWhiteColor = const Color(0xFFEEF4FF);

  static TextStyle textStyle =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 =
      TextStyle(fontSize: 17, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle discountText = TextStyle(
    fontSize: 14,
    color: Colors.red,
    decoration: TextDecoration.lineThrough, 
    decorationColor: Colors.red, 
    decorationThickness: 2, 
  );
}
