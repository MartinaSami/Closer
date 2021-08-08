import 'package:closer/file_export.dart';
import 'package:flutter/material.dart';
class CustomTextFromField extends StatelessWidget {
  final String hintText ;
  final bool secure;
  final TextInputType inputType;
  final Function(String) validation;
  final Function(String) saved;
  final int maxLine;
  final Widget prefix;
  final Widget suffix;
  CustomTextFromField({
    this.hintText : "hint ",
    this.inputType : TextInputType.text,
    this.saved,
    this.validation,
    this.secure : false ,
    this.maxLine : 1,
    this.prefix,
    this.suffix,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width:
      0.9 * width(context),
      height: isLandscape(context) ? 2*height(context)*.08 :height(context)*.08,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: prefix,
          suffixIcon: suffix,
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          hintText: hintText ,
          hintStyle: TextStyle(
            color: greyColor ,fontWeight: FontWeight.bold ,letterSpacing: 2
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color:greenColor, width: 2.5)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: greenColor, width: 2.5)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color:greenColor, width: 2.5)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: redColor , width: 2.5)),
        ),
        validator: validation,
        onSaved: saved,
        obscureText: secure,
        maxLines: maxLine,
        keyboardType: inputType,
      ),
    );
  }
}
