import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';

class OrderItems extends StatelessWidget {
  const OrderItems({
    super.key,
    required this.text,
    this.hasNotification = false,
  });
  final String text;
  final bool? hasNotification;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              backgroundColor: softBlue,
            ),
            child: TextWidget(
              text: text,
              fontFamily: "Raleway",
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontColor: shadeBlue,
            ),
          ),
          if (hasNotification == true)
            Positioned(
              child: Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: white,
                ),
                child: Center(
                  child: Container(
                    height: 14,
                    width: 14,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: shadeGreen,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
