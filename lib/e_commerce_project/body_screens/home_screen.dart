import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/category_details.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/category_grid.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/flash_sales.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/most_popular_products.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/my_order_items.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/new_items.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/new_items_section.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/popular_item.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/product_section_info.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/stories.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/suggestions.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/top_products.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/resources/category_images.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/resources/most_popular_img_1.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/resources/new_items_img_1.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/resources/recently_viewed_profiles_list.dart';

import '../components/actions_appbar_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: white,
              boxShadow: [
                BoxShadow(
                    color: shadeBlack.withValues(alpha: 0.5),
                    blurRadius: 1,
                    spreadRadius: 0.2,
                    offset: Offset(-0.1, 1)
                ),
              ],
            ),
            child: Center(
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset("lib/assets/images/avatar-2 1.png"),
                ),
              ),
            ),
          ),
        ),
        title: ElevatedButton(
          onPressed: () {
            print("Tapped");
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: shadeBlue,
          ),
          child: FittedBox(
            child: const TextWidget(
              text: "My Activity",
              fontFamily: "Raleway",
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontColor: white,
            ),
          ),
        ),
        actions: [
          ActionsButtons(
            icon: "lib/assets/e_commerce_project_icons/Icon (1).png",
          ),
          ActionsButtons(
            icon: "lib/assets/e_commerce_project_icons/Icon.png",
            isNotification: true,
          ),
          ActionsButtons(
            icon: "lib/assets/e_commerce_project_icons/Frame.png",
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: "Hello, MengHeng!",
                fontFamily: "RalewayBold",
                fontSize: 28,
                fontWeight: FontWeight.w700,
                fontColor: black,
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Container(
                  width: double.infinity,
                  height: 93,
                  decoration: BoxDecoration(
                    color: verySoftGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: "Announcement",
                          fontFamily: "RalewayBold",
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          fontColor: black,
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(
                              text: "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Maecenas hendrerit luctus \nlibero ac vulputate.",
                              fontFamily: "Nunito Sans",
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              fontColor: black,
                              textAlign: TextAlign.start,
                            ),
                            GestureDetector(
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: shadeBlue,
                                ),
                                child: Center(
                                  child: Image.asset("lib/assets/e_commerce_project_icons/Arrow.png"),
                                ),
                              ),
                              onTap: () {
                                print("Announcement tapped");
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              TextWidget(
                text: "Recently viewed",
                fontFamily: "RalewayBold",
                fontSize: 21,
                fontWeight: FontWeight.w700,
                fontColor: black,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    itemCount: profileImagesPath.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 60,
                        width: 60,
                        margin: EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: white,
                          boxShadow: [
                            BoxShadow(
                              color: shadeBlack.withValues(alpha: 0.2),
                              blurRadius: 1.5,
                              spreadRadius: 0.5,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Center(
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                profileImagesPath[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5,),
                    TextWidget(
                      text: "My Orders",
                      fontFamily: "RalewayBold",
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      fontColor: black,
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      height: 35,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          OrderItems(text: "To Pay"),
                          OrderItems(text: "To Receive", hasNotification: true,),
                          OrderItems(text: "To Review"),
                          OrderItems(text: "To Buy"),
                          OrderItems(text: "To View"),
                          OrderItems(text: "To Review"),
                          OrderItems(text: "To Review"),
                          OrderItems(text: "To Review"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              TextWidget(
                text: "Stories",
                fontFamily: "RalewayBold",
                fontSize: 21,
                fontWeight: FontWeight.w700,
                fontColor: black,
              ),
              const SizedBox(height: 15,),
              SizedBox(
                height: 175,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    StorySection(
                      imagePath: "lib/assets/images/story_img1.png",
                      isLiveAvailable: true,
                    ),
                    StorySection(
                      imagePath: "lib/assets/images/story_img2.png",
                    ),
                    StorySection(
                      imagePath: "lib/assets/images/story_image3.png",
                    ),
                    StorySection(
                      imagePath: "lib/assets/images/story_img4.png",
                    ),
                  ],
                ),
              ),
              NewItemsSection(images: newItemsImg1,),
              MostPopularProducts(paths: mostPopularImgPath1,),
              CategoryProduct(spacing: 20, itemCounts: 4,images: images, categoryDetails: categoryDetails0,),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: FlashSales(),
              ),
              const TopProducts(),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: const Suggestion(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
