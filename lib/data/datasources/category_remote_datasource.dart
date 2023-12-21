import 'package:dartz/dartz.dart';
import 'package:fic_7_ecommerce/data/datasources/auth_local_datasource.dart';
import 'package:http/http.dart' as http;

import '../../core/variables.dart';
import '../models/response/categories_response_model.dart';

class CategoryRemoteDatasource {
  Future<Either<String, CategoriesResponseModel>> getCategories() async {
    final token = await AuthLocalDatasource().getToken();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    };
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/categories'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(CategoriesResponseModel.fromJson(response.body));
    } else {
      return const Left('Server Error');
    }
  }
}
