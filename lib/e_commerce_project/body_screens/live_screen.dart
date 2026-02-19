import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/button.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      // "lib/assets/images/live_img.png",
                      "lib/assets/images/Image.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(Icons.visibility_outlined, size: 31,),
                      const SizedBox(width: 3,),
                      const TextWidget(
                        text: "2530",
                        fontFamily: "Nunito Sans",
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  Container(
                    height: 18,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: shadeGreen,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.circle, color: white, size: 9,),
                        const SizedBox(width: 2,),
                        const TextWidget(
                          text: "Live",
                          fontFamily: "Raleway",
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontColor: white,
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.fast_forward_sharp, color: blue,size: 25,),
                  const SizedBox(width: 5,),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: blue,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                    ),
                    child: const TextWidget(
                      text: "Shop",
                      fontFamily: "Nunito Sans",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontColor: white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
