import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    required this.fontFamily,
    required this.fontSize,
    required this.fontWeight,
    this.fontColor = black,
    this.textAlign = TextAlign.center,
    this.letterSpacing = 0,
    this.textDecoration = TextDecoration.none,
  });
  final String text;
  final String fontFamily;
  final FontWeight fontWeight;
  final double fontSize;
  final Color? fontColor;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final TextDecoration? textDecoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: fontColor,
        letterSpacing: letterSpacing,
        decoration: textDecoration,
        decorationColor: softPastelRed,
      ),
    );
  }
}
