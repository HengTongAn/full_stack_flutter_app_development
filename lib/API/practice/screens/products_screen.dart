import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/API/practice/helper/fetching_products_api.dart';
import 'package:full_stack_flutter_app_development/API/practice/screens/products_card.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/constrants/colors.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  late Future<dynamic> _productFuture;
  final FetchingProducts fetchingProductsData = FetchingProducts();

  @override
  void initState() {
    super.initState();
    _productFuture = fetchingProductsData.fetchingProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade200,
        title: const TextWidget(
          text: "Products Screen API",
          fontFamily: "Poppins",
          fontSize: 25,
          fontWeight: FontWeight.w700,
          fontColor: shadeBlack,
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: _productFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                color: softBlue.withValues(alpha: 0.5),
              ),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: TextWidget(
                text: "An Error Occured",
                fontFamily: "Poppins",
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            );
          } else if (!snapshot.hasData || snapshot.data.isEmpty) {
            return const Center(
              child: TextWidget(
                text: "No Data Found",
                fontFamily: "Poppins",
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            );
          }

          final products = snapshot.data;

          return GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 10,
              childAspectRatio: 0.62,
            ),
            itemBuilder: (context, index) {
              final product = products[index];
              return ProductsCard(product: product);
            },
          );
        },
      ),
    );
  }
}
