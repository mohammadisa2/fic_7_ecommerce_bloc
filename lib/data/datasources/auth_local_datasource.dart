import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/response/auth_response_model.dart';

class AuthLocalDatasource {
  Future<bool> saveAuthData(AuthResponseModel data) async {
    final pref = await SharedPreferences.getInstance();
    final result = await pref.setString('auth', data.toJson());
    return result;
  }

  Future<bool> removeAuthData() async {
    final pref = await SharedPreferences.getInstance();
    final result = await pref.remove('auth');
    return result;
  }

  Future<String> getToken() async {
    final pref = await SharedPreferences.getInstance();
    final jsonString = pref.getString('auth') ?? '';
    if (jsonString.isEmpty) {
      throw Exception("No token");
    }
    final authModel = AuthResponseModel.fromJson(jsonString);
    return authModel.jwtToken;
  }

  Future<bool> isLogin() async {
    final pref = await SharedPreferences.getInstance();
    final authJson = pref.getString('auth') ?? '';
    return authJson.isNotEmpty;
  }

  Future<bool> isUserAdmin() async {
    final pref = await SharedPreferences.getInstance();
    final authJson = pref.getString('auth');

    // Check if authJson is not null and not empty
    if (authJson != null && authJson.isNotEmpty) {
      // Decode the JSON string to AuthResponseModel
      final authData = AuthResponseModel.fromJson(jsonDecode(authJson));

      // Check if the user has the role "admin"
      if (authData.user.role == "admin") {
        return true;
      }
    }

    return false;
  }

  Future<User> getUser() async {
    final pref = await SharedPreferences.getInstance();
    final jsonString = pref.getString('auth') ?? '';
    if (jsonString.isEmpty) {
      throw Exception("No user");
    }
    final authModel = AuthResponseModel.fromJson(jsonString);
    return authModel.user;
  }
}
