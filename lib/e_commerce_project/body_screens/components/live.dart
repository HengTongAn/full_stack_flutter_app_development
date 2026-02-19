import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/body_screens/live_screen.dart';

import '../../components/text.dart';
import '../../constrants/colors.dart';

class Live extends StatelessWidget {
  const Live({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Card(
              elevation: 2,
              child: Column(
                children: [
                  Container(
                    height: 25,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: white,
                    ),
                    child: const TextWidget(
                      text: "ARTICALE REIMAGINED",
                      fontFamily: "Poppins",
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 3.5,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(13),
                      bottomRight: Radius.circular(13),
                    ),
                    child: Image.asset("lib/assets/images/top_products_img/81ofk+zLj8L.jpg"),
                  ),
                ],
              ),
            ),
            FaIcon(FontAwesomeIcons.solidCirclePlay, size: 27,),
            Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                height: 20,
                width: 41,
                decoration: BoxDecoration(
                  color: shadeGreen,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const TextWidget(
                  text: "Live",
                  fontFamily: "Raleway",
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  fontColor: white,
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LiveScreen(),
          ),
        );
      },
    );
  }
}
