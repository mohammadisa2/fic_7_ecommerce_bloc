import 'package:dartz/dartz.dart';
import 'package:fic_7_ecommerce/data/models/request/review_request_model.dart';
import 'package:fic_7_ecommerce/data/models/response/add_review_response_model.dart';
import 'package:http/http.dart' as http;

import '../../core/variables.dart';
import 'auth_local_datasource.dart';

class ReviewRemoteDatasource {
  Future<Either<String, AddReviewResponseModel>> addReview(
      ReviewRequestModel request) async {
    final token = await AuthLocalDatasource().getToken();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/reviews'),
      headers: headers,
      body: request.toJson(),
    );

    if (response.statusCode == 201) {
      return Right(AddReviewResponseModel.fromJson(response.body));
    } else {
      return const Left('Server error');
    }
  }
}
