import 'package:flutter/material.dart';
import '../../components/text.dart';
import '../../constrants/colors.dart';

class DiscountBar extends StatefulWidget {
  const DiscountBar({super.key});

  @override
  State<DiscountBar> createState() => _DiscountBarState();
}

class _DiscountBarState extends State<DiscountBar> {
  final List<String> discounts = ["All", "10%", "20%", "30%", "40%", "50%"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 30,
          decoration: BoxDecoration(
            color: offWhite,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        AnimatedAlign(
          alignment: Alignment(-1.0 + (selectedIndex * (2.0 / (discounts.length - 1))), 0),
          duration: const Duration(microseconds: 500000),
          curve: Curves.decelerate,
          child: FractionallySizedBox(
            widthFactor: 1 / discounts.length,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: blue,
                      width: 2,
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2.5,
                        spreadRadius: 0.2,
                        offset: Offset(0, 5),
                        color: shadeBlack.withAlpha(70),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: blue,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
          child: Row(
            children: List.generate(
              discounts.length, (index) {
                bool isSelected = selectedIndex == index;
                return Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => selectedIndex = index),
                    behavior: HitTestBehavior.opaque,
                    child: Center(
                      child: TextWidget(
                        text: discounts[index],
                        fontFamily: "RalewayBold",
                        fontSize: isSelected ? 16 : 13,
                        fontWeight: FontWeight.w700,
                        fontColor: isSelected ? blue : black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
