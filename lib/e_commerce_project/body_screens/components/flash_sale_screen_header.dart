import 'package:flutter/material.dart';
import '../../components/flash_sales.dart';
import '../../components/text.dart';
import '../../constrants/colors.dart';

class FlashSaleScreenHeader extends StatelessWidget {
  const FlashSaleScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const TextWidget(
          text: "Flash Sales",
          fontFamily: "RalewayBold",
          fontSize: 28,
          fontWeight: FontWeight.w700,
        ),
        Row(
          children: [
            Icon(
              Icons.timer_outlined,
              size: 30,
              color: white,
            ),
            timer(duration: "00"),
            timer(duration: "36"),
            timer(duration: "58"),
          ],
        ),
      ],
    );
  }
}
