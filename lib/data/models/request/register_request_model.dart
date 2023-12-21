import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class RegisterRequestModel {
//   {
//     "email":"Hammad@gmail.com",
//     "name":"Moh",
//     "password":"12345678"
// }
  final String email;
  final String name;
  final String password;
  RegisterRequestModel({
    required this.email,
    required this.name,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'name': name,
      'password': password,
    };
  }

  factory RegisterRequestModel.fromMap(Map<String, dynamic> map) {
    return RegisterRequestModel(
      email: map['email'] as String,
      name: map['name'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterRequestModel.fromJson(String source) =>
      RegisterRequestModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
