import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/body_screens/components/product_card.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/resources/discount_20_percent.dart';
import '../../constrants/colors.dart';

class Discount extends StatelessWidget {
  const Discount({
    super.key,
    required this.discountTitle,
  });
  final String discountTitle;

  @override
  Widget build(BuildContext context) {
    final firstPart = discountImg.take(6).toList();
    final secondPart = discountImg.skip(6).toList();
    return CustomScrollView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: discountTitle,
                  fontFamily: "RalewayBold",
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
                Image.asset(
                  "lib/assets/e_commerce_project_icons/levels.png",
                  height: 25,
                  width: 25,
                ),
              ],
            ),
          ),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            childAspectRatio: 0.64,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) => ProductCard(imagePath: firstPart[index]),
            childCount: firstPart.length,
          ),
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: AspectRatio(
              aspectRatio: 1.7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: Image.asset(
                  "lib/assets/images/big_sales/img1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),

        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            childAspectRatio: 0.64,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) => ProductCard(imagePath: secondPart[index]),
            childCount: secondPart.length,
          ),
        ),
      ],
    );
  }
}
