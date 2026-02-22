import 'dart:convert';
import 'package:full_stack_flutter_app_development/API/models/products_model.dart';
import 'package:http/http.dart' as http;

class FetchingProducts {
  Future<List<ProductsModel>> fetchingProducts() async {
    final String uri = "https://api.escuelajs.co/api/v1/products";
    final url = Uri.parse(uri);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final body = response.body;
      final List data = jsonDecode(body);
      final result = data.map((entry) => ProductsModel.fromJson(entry)).toList();
      return result;
    } else {
      throw Exception("Failed on loading products data!");
    }
  }
}