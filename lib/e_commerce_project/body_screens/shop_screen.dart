import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/body_screens/components/shopping_events.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/category_grid.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/most_popular_products.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/new_items_section.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/suggestions.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/top_products.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/resources/category_details.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/resources/category_images_shop_screen.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/resources/most_popular_img_2.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/resources/new_items_img_2.dart';
import '../components/flash_sales.dart';
import '../constrants/colors.dart';

class ShopScreen extends StatelessWidget {
  ShopScreen({super.key});
  final TextEditingController _search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TextWidget(
                text: "Shop",
                fontFamily: "RalewayBold",
                fontSize: 28,
                fontWeight: FontWeight.w700,
                fontColor: black,
              ),
            ),
            const SizedBox(width: 15,),
            Expanded(
              child: SizedBox(
                height: 40,
                child: TextFormField(
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: shadeBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15,),
                    filled: true,
                    fillColor: offWhite,
                    hintText: "Search",
                    suffixIcon: IconButton(
                      onPressed: () {
                        print("Camera opens");
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.camera,
                        size: 22,
                        color: blue,
                      ),
                    ),
                    hintStyle: TextStyle(
                      color: silver,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Poppins",
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            ShoppingEvents(),
            CategoryProduct(itemCounts: 6, images: categoryImages, categoryDetails: categoryDetails1,),
            const TopProducts(),
            NewItemsSection(images: newItemsImg2,),
            const FlashSales(),
            MostPopularProducts(paths: mostPopularImgPath2,),
            const Suggestion(),
          ],
        ),
      ),
    );
  }
}
