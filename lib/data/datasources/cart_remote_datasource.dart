import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:fic_7_ecommerce/data/datasources/auth_local_datasource.dart';
import 'package:fic_7_ecommerce/data/models/request/add_cart_request_model.dart';
import 'package:fic_7_ecommerce/data/models/request/cart_request_model.dart';
import 'package:fic_7_ecommerce/data/models/response/add_cart_response_model.dart';
import 'package:fic_7_ecommerce/data/models/response/cart_response_model.dart';
import 'package:fic_7_ecommerce/data/models/response/count_my_cart_response_model.dart';
import 'package:fic_7_ecommerce/data/models/response/delete_cart_response_model.dart';
import 'package:http/http.dart' as http;

import '../../core/variables.dart';

class CartRemoteDatasource {
  Future<Either<String, CartResponseModel>> getCarts() async {
    final token = await AuthLocalDatasource().getToken();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    };
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/my-carts'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(CartResponseModel.fromJson(response.body));
    } else {
      return const Left('Server Error');
    }
  }

  Future<Either<String, AddCartResponseModel>> addCart(
      AddCartRequestModel request) async {
    final token = await AuthLocalDatasource().getToken();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/add/my-carts'),
      headers: headers,
      body: request.toJson(),
    );

    if (response.statusCode == 201) {
      return Right(AddCartResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }

  Future<Either<String, DeleteCartResponseModel>> deletCart(
      CartRequestModel request) async {
    final token = await AuthLocalDatasource().getToken();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    final response = await http.delete(
      Uri.parse('${Variables.baseUrl}/api/delete/my-carts'),
      headers: headers,
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(DeleteCartResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }

  Future<Either<String, CountMyCartResponseModel>> getCountMyCart() async {
    final token = await AuthLocalDatasource().getToken();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    };
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/count-my-carts'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(CountMyCartResponseModel.fromJson(response.body));
    } else {
      return const Left('Server Error');
    }
  }
}
