import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/popular_item.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/product_section_info.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/resources/most_popular_likes_role.dart';

class MostPopularProducts extends StatelessWidget {
  const MostPopularProducts({
    super.key,
    required this.paths,
  });
  final List<String> paths;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 20,),
        const ProductSectionInfo(
          title: "Most Popular",
          isTrailing: true,
        ),
        const SizedBox(height: 20,),
        SizedBox(
          height: 157,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: paths.length,
            itemBuilder: (context, index) {
              final information = info[index];
              return PopularItem(
                imgPath: paths[index],
                likes: information["likes"]!,
                role: information["role"]!,
              );
            },
          ),
        ),
      ],
    );
  }
}
