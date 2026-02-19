import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(9),
                boxShadow: [
                  BoxShadow(
                    color: shadeBlack.withValues(alpha: 0.2),
                    blurRadius: 7.5,
                    spreadRadius: 0.5,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const TextWidget(
              text: "Lorem ipsum dolor sit amet consectetur",
              fontFamily: "Nunito Sans",
              fontSize: 14,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.start,
            ),
            const Row(
              children: [
                TextWidget(
                  text: "\$16,00",
                  fontFamily: "RalewayBold",
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(width: 5,),
                TextWidget(
                  text: "\$20,00",
                  fontFamily: "RalewayBold",
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  fontColor: softPastelRed,
                  textDecoration: TextDecoration.lineThrough,
                ),
              ],
            )
          ],
        ),
        Positioned(
          top: 5,
          right: 5,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5),
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
              gradient: LinearGradient(
                colors: [
                  deepPink,
                  pinkAccent,
                ],
              ),
            ),
            child: const TextWidget(
              text: "-20%",
              fontFamily: "RalewayBold",
              fontSize: 12,
              fontWeight: FontWeight.w700,
              fontColor: white,
            ),
          ),
        ),
      ],
    );
  }
}
