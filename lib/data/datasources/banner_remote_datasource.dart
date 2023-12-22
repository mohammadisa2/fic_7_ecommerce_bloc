import 'package:dartz/dartz.dart';
import 'package:fic_7_ecommerce/data/datasources/auth_local_datasource.dart';
import 'package:http/http.dart' as http;

import '../../core/variables.dart';
import '../models/response/banners_response_model.dart';

class BannerRemoteDatasource {
  Future<Either<String, BannersResponseModel>> getBanners() async {
    final token = await AuthLocalDatasource().getToken();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    };
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/banners'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(BannersResponseModel.fromJson(response.body));
    } else {
      return const Left('Server Error');
    }
  }
}
