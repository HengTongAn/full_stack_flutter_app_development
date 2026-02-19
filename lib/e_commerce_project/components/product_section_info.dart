import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';

import '../constrants/colors.dart';

class ProductSectionInfo extends StatelessWidget {
  const ProductSectionInfo({
    super.key,
    required this.title,
    this.isTrailing = false,
  });
  final String title;
  final bool isTrailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Row(
        children: [
          TextWidget(
            text: title,
            fontFamily: "RalewayBold",
            fontSize: 21,
            fontWeight: FontWeight.w700,
            fontColor: black,
          ),
          if (isTrailing)
            Spacer(),
            TextWidget(
              text: "See All",
              fontFamily: "RalewayBold",
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontColor: black,
            ),
            SizedBox(width: 10,),
            GestureDetector(
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: shadeBlue,
                ),
                child: Center(
                  child: Image.asset("lib/assets/e_commerce_project_icons/Arrow.png"),),
              ),
              onTap: () {
              },
            ),
        ],
      ),
    );
  }
}
