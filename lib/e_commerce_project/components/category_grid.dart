import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/category_details.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/product_section_info.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import '../constrants/colors.dart';

class CategoryProduct extends StatelessWidget {
  const CategoryProduct({
    super.key,
    this.spacing = 0,
    required this.itemCounts,
    required this.images,
    required this.categoryDetails,
  });
  final double? spacing;
  final int itemCounts;
  final List<String> images;
  final List<Map<String, String>> categoryDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: spacing!),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20,),
          ProductSectionInfo(
            title: "Categories",
            isTrailing: true,
          ),
          const SizedBox(height: 15,),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: itemCounts,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 0.74,
            ),
            itemBuilder: (context, outerIndex) {
              final categoryData = categoryDetails[outerIndex];
              return Container(
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: shadeBlack.withValues(alpha: 0.2),
                      blurRadius: 7.5,
                      spreadRadius: 0.5,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                          childAspectRatio: 0.95,
                        ),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (context, innerIndex) {
                          int imageIndex = (outerIndex * 4) + innerIndex;
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset(
                              images[imageIndex],
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 17,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: categoryData["category"]!,
                          fontFamily: "RalewayBold",
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          fontColor: black,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                            color: shadeWhite,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: TextWidget(
                            text: categoryData["itemCount"]!,
                            fontFamily: "RalewayBold",
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            fontColor: black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
