import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';

class NewItems extends StatelessWidget {
  const NewItems({
    super.key,
    required this.imgPath,
    required this.description,
    required this.price,
  });
  final String imgPath;
  final String description;
  final String price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 5,
                color: white,
                style: BorderStyle.solid,
              ),
              color: white,
              boxShadow: [
                BoxShadow(
                  color: shadeBlack.withValues(alpha: 0.2),
                  blurRadius: 1,
                  spreadRadius: 0.1,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Center(
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          TextWidget(
            text: description,
            fontFamily: "Nunito Sans",
            fontSize: 13,
            fontWeight: FontWeight.w700,
            fontColor: black,
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 8,),
          TextWidget(
            text: "\$$price",
            fontFamily: "RalewayBold",
            fontSize: 17,
            fontWeight: FontWeight.w700,
            fontColor: black,
          ),
        ],
      ),
    );
  }
}
