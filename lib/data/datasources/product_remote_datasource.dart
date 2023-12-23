import 'package:dartz/dartz.dart';
import 'package:fic_7_ecommerce/data/models/response/product_details_response_model.dart';
import 'package:http/http.dart' as http;

import '../../core/variables.dart';
import '../models/response/products_response_model.dart';
import 'auth_local_datasource.dart';

class ProductRemoteDatasource {
  Future<Either<String, ProductsResponseModel>> getProducts({int? page}) async {
    final token = await AuthLocalDatasource().getToken();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    };

    // Modifikasi URL dengan menambahkan parameter page jika diberikan
    final url = page != null
        ? '${Variables.baseUrl}/api/products?page=$page'
        : '${Variables.baseUrl}/api/products';

    final response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(ProductsResponseModel.fromJson(response.body));
    } else {
      return const Left('Server Error, please contact admin');
    }
  }

  Future<Either<String, ProductsResponseModel>> getProductsByCategory(
      int categoryId) async {
    final token = await AuthLocalDatasource().getToken();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    };
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/products?category_id=$categoryId'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(ProductsResponseModel.fromJson(response.body));
    } else {
      return const Left('Server Error, please contact admin');
    }
  }

  Future<Either<String, ProductDetailsResponseModel>> getProductsDetail(
      int productId) async {
    final token = await AuthLocalDatasource().getToken();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    };
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/products/$productId'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(ProductDetailsResponseModel.fromJson(response.body));
    } else {
      return const Left('Server Error, please contact admin');
    }
  }
}
