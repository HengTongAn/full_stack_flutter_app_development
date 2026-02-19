import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/card_pages.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatelessWidget {
  final _controller = PageController();
  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 240,
            left: 0,
            child: Image.asset("lib/assets/images/bubble 10.png"),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("lib/assets/images/bubble 09.png"),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: PageView(
                      controller: _controller,
                      children: const [
                        CardPage(
                          imagePath: "lib/assets/images/Image.png",
                          title: "Hello",
                          description: "Lorem ipsum dolor sit amet, "
                              "consectetur adipiscing elit. Sed non "
                              "consectetur turpis. Morbi eu eleifend lacus.",
                        ),
                        CardPage(
                          imagePath: "lib/assets/images/02CA0361-200F-4CA0-AFF2-D468EC2793C0.png",
                          title: "Dear Customers",
                          description: "Lorem ipsum dolor sit amet, "
                              "consectetur adipiscing elit. Sed non "
                              "consectetur turpis. Morbi eu eleifend lacus.",
                        ),
                        CardPage(
                          imagePath: "lib/assets/images/Image.png",
                          title: "Suggestions",
                          description: "Lorem ipsum dolor sit amet, "
                              "consectetur adipiscing elit. Sed non "
                              "consectetur turpis. Morbi eu eleifend lacus.",
                        ),
                        CardPage(
                          imagePath: "lib/assets/images/02CA0361-200F-4CA0-AFF2-D468EC2793C0.png",
                          title: "Ready?",
                          description: "Lorem ipsum dolor sit amet,"
                              "consectetur adipiscing elit.",
                          isBottomButton: true,
                        ),
                      ],
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: JumpingDotEffect(
                      activeDotColor: blue,
                      dotColor: softBlue,
                      dotHeight: 20,
                      dotWidth: 20,
                      verticalOffset: 20,
                      spacing: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
