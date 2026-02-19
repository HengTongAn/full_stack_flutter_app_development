import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/product_section_info.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/resources/new_items_img_1.dart';
import '../resources/new_items_description_price.dart';
import 'new_items.dart';

class NewItemsSection extends StatelessWidget {
  const NewItemsSection({super.key, required this.images,});
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20,),
          ProductSectionInfo(
            title: "New Items",
            isTrailing: true,
          ),
          const SizedBox(height: 15,),
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) {
                final source = sources[index];
                return NewItems(
                  imgPath: images[index],
                  description: source["description"]!,
                  price: source["price"]!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
