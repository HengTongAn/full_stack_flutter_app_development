import 'package:flutter/material.dart';
import '../constrants/colors.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({
    super.key,
    required this.controller,
    this.isPasswordVisible = false,
    required this.validator,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.borderRadius,
  });
  final TextEditingController controller;
  final bool isPasswordVisible;
  final String? Function(String?)? validator;
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final BorderRadius? borderRadius;

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPasswordVisible;
  }

  @override
  Widget build(BuildContext context) {
    final effectiveBorderRadius = widget.borderRadius ?? BorderRadius.circular(50);
    return TextFormField(
      style: TextStyle(
        fontFamily: "Poppins",
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: shadeBlack,
      ),
      controller: widget.controller,
      obscureText: widget.isPasswordVisible ? _obscureText : false,
      validator: widget.validator,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontFamily: "Poppins",
          fontSize: 13.83,
          fontWeight: FontWeight.w500,
          color: shadeGrey,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        filled: true,
        fillColor: veryShadeGrey,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: effectiveBorderRadius,
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: effectiveBorderRadius,
        ),
        suffixIcon: widget.isPasswordVisible
            ? GestureDetector(
          child: Padding(
            padding: EdgeInsets.only(right: 12),
              child: Icon(
                !_obscureText ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                size: 18,
              ),
            ),
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
        ) : widget.suffixIcon,
      ),
    );
  }
}
