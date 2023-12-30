import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:fic_7_ecommerce/data/models/request/add_favorite_product_request_model.dart';
import 'package:fic_7_ecommerce/data/models/response/add_favorite_product_response_model.dart';
import 'package:fic_7_ecommerce/data/models/response/my_favorite_product_response_model.dart';
import 'package:http/http.dart' as http;

import '../../core/variables.dart';
import '../models/response/delete_favorite_product_response_model.dart';
import 'auth_local_datasource.dart';

class FavoriteProductRemoteDatasource {
  Future<Either<String, AddFavoriteProductResponseModel>> addFavoriteProduct(
      AddFavoriteProductRequestModel request) async {
    final token = await AuthLocalDatasource().getToken();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/add/my-favorite-products'),
      headers: headers,
      body: request.toJson(),
    );

    if (response.statusCode == 201) {
      return Right(AddFavoriteProductResponseModel.fromJson(response.body));
    } else {
      return const Left('Server error');
    }
  }

  Future<Either<String, DeleteFavoriteProductResponseModel>>
      deleteFavoriteProduct(AddFavoriteProductRequestModel request) async {
    final token = await AuthLocalDatasource().getToken();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    final response = await http.delete(
      Uri.parse('${Variables.baseUrl}/api/delete/my-favorite-products'),
      headers: headers,
      body: request.toJson(),
    );

    final obj = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return Right(DeleteFavoriteProductResponseModel.fromJson(response.body));
    } else {
      return Left(obj['message']);
    }
  }

  Future<Either<String, MyFavoriteProductResponseModel>>
      getMyFavoriteProduct() async {
    final token = await AuthLocalDatasource().getToken();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/my-favorite-products'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(MyFavoriteProductResponseModel.fromJson(response.body));
    } else {
      return const Left('Server error');
    }
  }
}
