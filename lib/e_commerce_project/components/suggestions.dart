import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';
import '../resources/suggestions_sources.dart';

final List<String> _prices = [
  "17,00",
  "18,00",
  "19,00",
  "20,99",
  "22,50",
  "17,50",
];

class Suggestion extends StatelessWidget {
  const Suggestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 15,),
        Row(
          children: [
            TextWidget(
              text: "Just For You",
              fontFamily: "RalewayBold",
              fontSize: 21,
              fontWeight: FontWeight.w700,
              fontColor: black,
            ),
            const SizedBox(width: 5,),
            Icon(
              Icons.star,
              size: 20,
              color: blue,
            ),
          ],
        ),
        const SizedBox(height: 20,),
        Flexible(
          child: GridView.builder(
            itemCount: 6,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              childAspectRatio: 0.52,
            ),
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(9),
                      boxShadow: [
                        BoxShadow(
                          color: shadeBlack.withValues(alpha: 0.2),
                          blurRadius: 7.5,
                          spreadRadius: 0.5,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(9),
                      child: Image.asset(
                        suggestionImages[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  TextWidget(
                    text: "Lorem ipsum dolor sit amet consectetur",
                    fontFamily: "Nunito Sans",
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    fontColor: black,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 4,),
                  TextWidget(
                    text: "\$${_prices[index]}",
                    fontFamily: "RalewayBold",
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    fontColor: black,
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
