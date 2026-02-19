import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';

class StorySection extends StatelessWidget {
  const StorySection({
    super.key,
    required this.imagePath,
    this.isLiveAvailable = false,
  });
  final String imagePath;
  final bool? isLiveAvailable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Stack(
        children: [
          Container(
            width: 105,
            height: 175,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: shadeBlack.withValues(alpha: 0.2),
                  blurRadius: 1,
                  spreadRadius: 0.1,
                  offset: Offset(0, 1),
                )
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Center(
                child: Image.asset(
                  width: double.infinity,
                  height: double.infinity,
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          if (isLiveAvailable == true)
            Positioned(
              top: 8,
              left: 9,
              child: Container(
                width: 41,
                height: 20,
                decoration: BoxDecoration(
                  color: shadeGreen,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextWidget(
                  text: "Live",
                  fontFamily: "Raleway",
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  fontColor: white,
                ),
              ),
            ),
          Positioned.fill(
            child: Center(
              child: Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: lightGrey.withValues(alpha: 0.5),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(Icons.play_arrow_rounded, color: white,),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
