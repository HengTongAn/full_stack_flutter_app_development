import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/body_screens/components/bottom_navigation_bar.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/body_screens/components/discount_bar.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/body_screens/components/discount_section.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/body_screens/components/live.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/most_popular_products.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/resources/most_popular_img_1.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/resources/most_popular_img_2.dart';
import '../components/text.dart';
import '../constrants/colors.dart';
import 'components/flash_sale_screen_header.dart';

class FlashSaleScreen extends StatefulWidget {
 const FlashSaleScreen({super.key});

  @override
  State<FlashSaleScreen> createState() => _FlashSaleScreenState();
}

class _FlashSaleScreenState extends State<FlashSaleScreen> {
  final List<String> discounts = ["All", "10%", "20%", "30%", "40%", "50%"];
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset("lib/assets/images/bubble 08.png"),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset("lib/assets/images/bubble 07.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 55,),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FlashSaleScreenHeader(),
                    const TextWidget(
                      text: "Choose Your Discount",
                      fontFamily: "Raleway",
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontColor: black,
                    ),
                    const SizedBox(height: 30,),
                    DiscountBar(),
                    const SizedBox(height: 20,),
                    Live(),
                    Discount(discountTitle: "20% Discount",),
                    MostPopularProducts(paths: mostPopularImgPath2),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
