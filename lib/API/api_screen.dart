import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/API/helper/fetching_products_api.dart';
import 'package:full_stack_flutter_app_development/API/helper/product_card.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';

class MainApiScreen extends StatefulWidget {
  const MainApiScreen({super.key});

  @override
  State<MainApiScreen> createState() => _MainApiScreenState();
}

class _MainApiScreenState extends State<MainApiScreen> {
  late Future<dynamic> _productsFuture;
  final FetchingProducts fetchingProducts = FetchingProducts();

  @override
  void initState() {
    super.initState();
    _productsFuture = fetchingProducts.fetchProductsApi(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(
          text: "Fetch API",
          fontFamily: "Poppins",
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: _productsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: TextWidget(
                text: "An error occurred",
                fontFamily: "Poppins",
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            );
          } else if (!snapshot.hasData || snapshot.data.isEmpty) {
            return const Center(
              child: TextWidget(
                text: "No products found",
                fontFamily: "Poppins",
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            );
          }

          final products = snapshot.data;

          return ListView.builder(
            itemCount: products?.length,
            itemBuilder: (context, index) {
              return ProductCard(product: products[index]);
            },
          );
        }
      ),
    );
  }
}
