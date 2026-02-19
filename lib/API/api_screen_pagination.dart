import 'package:flutter/material.dart';
import 'package:full_stack_flutter_app_development/API/helper/fetching_products_api.dart';
import 'package:full_stack_flutter_app_development/API/helper/product_card.dart';
import 'package:full_stack_flutter_app_development/API/models/products_model.dart';
import 'package:full_stack_flutter_app_development/e_commerce_project/components/text.dart';

class ApiScreenPagination extends StatefulWidget {
  const ApiScreenPagination({super.key});

  @override
  State<ApiScreenPagination> createState() => _ApiScreenPaginationState();
}

class _ApiScreenPaginationState extends State<ApiScreenPagination> {
  final ScrollController _controller = ScrollController();
  final FetchingProducts fetchApi = FetchingProducts();

  List<ProductsModel> products = [];
  bool isLoading = false;
  bool hasMore = true;

  int page = 0;

  @override
  void initState() {
    super.initState();
    fetchData();

    _controller.addListener(() {
      if (
      _controller.position.pixels >= _controller.position.maxScrollExtent - 200
      && !isLoading
      && hasMore
      ) {
        fetchData();
      }
    });
  }

  Future<void> fetchData() async {
    if (isLoading) return;
    setState(() {
      isLoading = true;
    });

    final getData = await fetchApi.fetchProductsApi(page);
    setState(() {
      page += getData.length;
      products.addAll(getData);

      isLoading = false;

      if (getData.isEmpty) {
        hasMore = false;
      }
    });
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
      body: ListView.builder(
        controller: _controller,
        itemCount: products.length,
        itemBuilder: (context, index) {
          if (index < products.length) {
            print("----- $_controller -----");
            return ProductCard(product: products[index]);
          } else {
            return hasMore ? Center(
              child: CircularProgressIndicator(
                constraints: BoxConstraints(
                  minWidth: 30,
                  minHeight: 30,
                ),
              ),
            ) : Text("No data");
          }
        },
      ),
    );
  }
}
