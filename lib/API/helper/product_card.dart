import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';import '../../e_commerce_project/components/text.dart';
import '../../e_commerce_project/constrants/colors.dart';

class ProductCard extends StatefulWidget {
  final dynamic product;
  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int _currentImageIndex = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    final images = widget.product.images as List<dynamic>;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CarouselSlider.builder(
                carouselController: _controller,
                itemCount: images.length,
                options: CarouselOptions(
                  autoPlay: true,
                  enableInfiniteScroll: images.length > 1,
                  enlargeCenterPage: true,
                  viewportFraction: 0.85,
                  aspectRatio: 2,
                  onPageChanged: (index, reason) => setState(
                    () =>
                      _currentImageIndex = index,
                  ),
                ),
                itemBuilder: (context, itemIndex, pageViewIndex) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CachedNetworkImage(
                        imageUrl: images[itemIndex] ?? "",
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator(strokeWidth: 2,),
                        ),
                        errorWidget: (context, url, error) => Icon(Icons.error,),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
              Positioned(
                left: 10,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: shadeBlack.withValues(alpha: 0.5),
                  ),
                  child: GestureDetector(
                    onTap: () => _controller.animateToPage(_currentImageIndex - 1),
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: black,
                      size: 15,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 10,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: shadeBlack.withValues(alpha: 0.5),
                  ),
                  child: GestureDetector(
                    onTap: () => _controller.animateToPage(_currentImageIndex + 1),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: black,
                      size: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            spacing: 6,
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.asMap().entries.map((entry) {
              bool _isSelected = _currentImageIndex == entry.key;
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  width: _isSelected ? 25 : 10,
                  height: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: _isSelected ? blue : softBlue,
                    // shape: _isSelected ? BoxShape.rectangle : BoxShape.circle,
                    borderRadius: _isSelected ? BorderRadius.circular(10) : BorderRadius.circular(50),
                  ),
                  curve: Curves.easeInOut,
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 5,),
          TextWidget(
            text: widget.product.title ?? "",
            fontFamily: "Poppins",
            fontSize: 18,
            fontWeight: FontWeight.w700,
            textAlign: TextAlign.start,
          ),
          TextWidget(
            text: "\$${widget.product.price}",
            fontFamily: "Poppins",
            fontSize: 18,
            fontWeight: FontWeight.w700,
            fontColor: redAccent,
          ),
          TextWidget(
            text: widget.product.description ?? "",
            fontFamily: "Poppins",
            fontSize: 10,
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 0.25,
                        color: shadeBlack
                    )
                  ],
                ),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: CachedNetworkImage(
                      imageUrl: widget.product.category.image,
                      progressIndicatorBuilder: (context, url, downloadProgress) =>
                          CircularProgressIndicator(
                            value: downloadProgress.progress,
                            constraints: BoxConstraints(
                              maxHeight: 10,
                              maxWidth: 10,
                            ),
                          ),
                      errorWidget: (context, url, error) => Icon(
                        Icons.error,
                        size: 10,
                        color: redAccent,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: widget.product.category.name,
                    fontFamily: "Poppins",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                  TextWidget(
                    text: widget.product.category.slug,
                    fontFamily: "Poppins",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
            ],
          ),
          const Divider(height: 15,),
        ],
      ),
    );
  }
}
