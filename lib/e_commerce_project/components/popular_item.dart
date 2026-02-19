import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';

import '../constrants/colors.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({
    super.key,
    required this.imgPath,
    required this.likes,
    required this.role,
  });
  final String imgPath;
  final String likes;
  final String role;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: 105,
        height: 120,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 5,
            color: white,
            style: BorderStyle.solid,
          ),
          boxShadow: [
            BoxShadow(
              color: shadeBlack.withValues(alpha: 0.2),
              blurRadius: 1,
              spreadRadius: 0.1,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              width: 93,
              height: 115,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
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
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5, top: 10),
              child: Row(
                children: [
                  TextWidget(
                    text: "1780",
                    fontFamily: "RalewayBold",
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontColor: black,
                  ),
                  Icon(Icons.favorite_rounded, color: blue, size: 15,),
                  Spacer(),
                  TextWidget(
                    text: role,
                    fontFamily: "Raleway",
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    fontColor: black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
