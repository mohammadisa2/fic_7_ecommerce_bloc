import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:fic_7_ecommerce/data/models/response/my_order_response_model.dart';
import 'package:http/http.dart' as http;

import '../../core/variables.dart';
import 'auth_local_datasource.dart';

class MyOrderRemoteDatasource {
  Future<Either<String, MyOrderResponseModel>> fetchOrders() async {
    final token = await AuthLocalDatasource().getToken();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    };
    try {
      final response = await http.get(
        Uri.parse('${Variables.baseUrl}/api/my-orders'),
        headers: headers,
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        final MyOrderResponseModel orderResponse =
            MyOrderResponseModel.fromJson(jsonData);
        return Right(orderResponse);
      } else {
        return Left(
            'Failed to fetch orders. Status code: ${response.statusCode}');
      }
    } catch (e) {
      return Left('Error: $e');
    }
  }
}
