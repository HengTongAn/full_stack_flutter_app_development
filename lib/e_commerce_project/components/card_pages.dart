import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/body_screens/profile_screen.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/button.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';

class CardPage extends StatelessWidget {
  const CardPage({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    this.isBottomButton = false,
  });
  final String imagePath;
  final String title;
  final String description;
  final bool isBottomButton;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      clipBehavior: Clip.antiAlias,
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              child: Image.asset(
                height: 310,
                width: double.infinity,
                fit: BoxFit.cover,
                imagePath,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 25,),
                  TextWidget(
                    text: title,
                    fontFamily: "RalewayBold",
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontColor: black,
                  ),
                  SizedBox(height: 10,),
                  TextWidget(
                    text: description,
                    fontFamily: "Raleway",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontColor: black,
                  ),
                  SizedBox(height: 20,),
                  ?isBottomButton ? Button(
                    text: "Let's Start",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ),
                      );
                    },
                    backgroundColor: shadeBlue,
                  ) : null,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
