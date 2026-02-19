import 'package:flutter/material.dart';

class BigSale extends StatelessWidget {
  const BigSale({super.key, required this.path,});
  final String path;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(9),
      child: Image.asset(
        path,
        fit: BoxFit.cover,
      ),
    );
  }
}
