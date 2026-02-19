import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = blue
  });
  final String text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
            fontFamily: "Poppins",
            fontSize: 22,
            fontWeight: FontWeight.w300,
            color: shadeWhite
        ),
      ),
    );
  }
}

class Cancel extends StatelessWidget {
  const Cancel({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: const TextStyle(
          fontFamily: "Nunito Sans",
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

