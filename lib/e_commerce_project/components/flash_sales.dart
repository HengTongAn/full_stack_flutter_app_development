import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/body_screens/flash_sale_screen.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/resources/load_flash_sales_images.dart';

class FlashSales extends StatelessWidget {
  const FlashSales({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              text: "Flash Sales",
              fontFamily: "RalewayBold",
              fontSize: 21,
              fontWeight: FontWeight.w700,
              fontColor: black,
            ),
            Row(
              children: [
                Icon(
                  Icons.timer_outlined,
                  size: 30,
                  color: blue,
                ),
                timer(duration: "00"),
                timer(duration: "36"),
                timer(duration: "58"),
              ],
            ),
          ],
        ),
        SizedBox(height: 20,),
        Flexible(
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 0.92,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: shadeBlack.withValues(alpha: 0.2),
                            blurRadius: 7.5,
                            spreadRadius: 0.5,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(9),
                        child: Image.asset(
                          flashSaleImages[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: Container(
                        height: 18,
                        width: 39,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                          ),
                          gradient: LinearGradient(
                            colors: [
                              deepPink,
                              pinkAccent,
                            ],
                          ),
                        ),
                        child: Center(
                          child: TextWidget(
                            text: "-20%",
                            fontFamily: "RalewayBold",
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontColor: white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FlashSaleScreen(),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

Widget timer({required String duration}) {
  return Padding(
    padding: const EdgeInsets.only(left: 3),
    child: Container(
      width: 30,
      height: 27,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: verySoftPink,
      ),
      child: Center(
        child: TextWidget(
          text: duration,
          fontFamily: "RalewayBold",
          fontSize: 17,
          fontWeight: FontWeight.w700,
          fontColor: black,
        ),
      ),
    ),
  );
}
