import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';

class ActionsButtons extends StatelessWidget {
  const ActionsButtons({
    super.key,
    required this.icon,
    this.isNotification = false,
  });
  final String icon;
  final bool isNotification;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: GestureDetector(
            child: Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: verySoftGrey,
              ),
              child: Center(
                child: Image.asset(
                  icon,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            onTap: () {
              print("Actions Buttons Tapped");
            },
          ),
        ),
        if (isNotification) 
          Positioned(
            top: 0,
            right: 10,
            child: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: shadeBlue,
              ),
            ),
          ),
      ],
    );
  }
}
