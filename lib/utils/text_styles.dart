import 'package:closer/file_export.dart';
import 'package:flutter/material.dart';
class TextStyles {

  static TextStyle get buttonTextStyle => TextStyle(
        fontSize: 16,
        color: whiteColor ,
        fontWeight: FontWeight.bold,
         letterSpacing: 1,

      );

  static TextStyle get greenBoldTextStyle => TextStyle(
    fontSize: 18,
    color: greenColor ,
    fontWeight: FontWeight.bold,
    inherit: false,
  );


  static TextStyle get descriptionTextStyle=> TextStyle(
    fontSize: 15.0,
    color: blackColor ,
    letterSpacing: .5,
    inherit: false,
  );


}
