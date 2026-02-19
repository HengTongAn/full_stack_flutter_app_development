import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/body_screens/components/big_sale_img.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShoppingEvents extends StatelessWidget {
  ShoppingEvents({super.key});
  final PageController _controller = PageController();
  final _imagePaths = [
    "lib/assets/images/big_sales/img1.jpg",
    "lib/assets/images/big_sales/img2.jpg",
    "lib/assets/images/big_sales/img3.jpg",
    "lib/assets/images/big_sales/img4.jpg",
    "lib/assets/images/big_sales/img5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20,),
        AspectRatio(
          aspectRatio: 2,
          child: PageView.builder(
            controller: _controller,
            itemCount: _imagePaths.length,
            itemBuilder: (context, index) {
              return BigSale(
                path: _imagePaths[index],
              );
            },
          ),
        ),
        const SizedBox(height: 15,),
        SmoothPageIndicator(
          controller: _controller,
          count: _imagePaths.length,
          effect: ExpandingDotsEffect(
            dotColor: softBlue,
            activeDotColor: blue,
          ),
        ),
      ],
    );
  }
}