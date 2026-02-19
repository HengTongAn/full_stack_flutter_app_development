import 'dart:convert';
import 'package:full_stack_flutter_app_development/API/models/products_model.dart';
import 'package:http/http.dart' as http;

class FetchingProducts {
  // https://api.escuelajs.co/api/v1/products?offset=1&limit=100
  Future<List<ProductsModel>> fetchProductsApi(int offset) async {
    // offset = pagination
    int limit = 10;
    final url = Uri.parse("https://api.escuelajs.co/api/v1/products?offset=$offset&limit=$limit");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      final result = data.map((e) => ProductsModel.fromJson(e)).toList();
      return result;
    } else {
      throw Exception("Failed on loading products from server!");
    }
  }
}