import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/resources/top_product_img.dart';

import '../constrants/colors.dart';

class TopProducts extends StatelessWidget {
  const TopProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30,),
        const TextWidget(
          text: "Top Products",
          fontFamily: "RalewayBold",
          fontSize: 21,
          fontWeight: FontWeight.w700,
          fontColor: black,
        ),
        const SizedBox(height: 15,),
        SizedBox(
          height: 62,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 60,
                  width: 60,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: shadeBlack.withValues(alpha: 0.2),
                        blurRadius: 1.5,
                        spreadRadius: 0.2,
                      ),
                    ],
                    shape: BoxShape.circle,
                    color: white,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      topProductsImages[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 20,)
      ],
    );
  }
}
