import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/API/models/products_model.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';

class ProductsCard extends StatefulWidget {
  const ProductsCard({super.key, required this.product});
  final dynamic product;

  @override
  State<ProductsCard> createState() => _ProductsCardState();
}

class _ProductsCardState extends State<ProductsCard> {
  @override
  Widget build(BuildContext context) {
    final images = widget.product.images as List<dynamic>;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            CarouselSlider.builder(
              itemCount: images.length,
              itemBuilder: (context, itemIndex, pageIndex) {
                return Container(
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: images[itemIndex],
                      errorWidget: (context, url, error) => Center(
                        child: Icon(Icons.error, size: 50, color: softBlue),
                      ),
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                autoPlay: true,
                enableInfiniteScroll: images.length > 1,
                enlargeCenterPage: true,
                viewportFraction: 1,
                aspectRatio: 1,
              ),
            ),
            Positioned(
              top: 2.5,
              left: 2.5,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                    colors: [deepPink, pinkAccent],
                    transform: GradientRotation(3.14159 / 4),
                  ),
                ),
                child: TextWidget(
                  text: widget.product.category.name,
                  fontFamily: "Nunito Sans",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontColor: white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        TextWidget(
          text: widget.product.title,
          fontFamily: "Poppins",
          fontSize: 12,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 5),
        TextWidget(
          text: "USD ${widget.product.price.toStringAsFixed(2)}",
          fontFamily: "Poppins",
          fontSize: 12,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.start,
          fontColor: redAccent,
        ),
      ],
    );
  }
}
