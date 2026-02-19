import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';

class OptionsButton extends StatelessWidget {
  const OptionsButton({
    super.key,
    required this.isSelected,
    required this.text,
    required this.backgroundColor,
    this.fontWeight = FontWeight.w700,
    this.fontColor = blue,
    required this.fontFamily,
    required this.optionBackgroundColor
  });
  final bool isSelected;
  final String text;
  final Color backgroundColor;
  final FontWeight? fontWeight;
  final Color? fontColor;
  final String fontFamily;
  final Color optionBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 110),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(50)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 25,),
            Text(
              text,
              style: TextStyle(
                fontFamily: fontFamily,
                fontSize: 18,
                color: fontColor,
                fontWeight: fontWeight,
              ),
            ),
            Container(
              height: 27,
              width: 27,
              decoration: BoxDecoration(
                color: white,
                shape: BoxShape.circle
              ),
              child: Center(
                child: Container(
                  height: 22,
                  width: 22,
                  decoration: BoxDecoration(
                    color: optionBackgroundColor,
                    shape: BoxShape.circle
                  ),
                  child: Center(
                    child: isSelected ? Image.asset("lib/assets/images/Icon feather-check.png") : null,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
