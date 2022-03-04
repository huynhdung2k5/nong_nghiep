import 'package:dio/dio.dart';

class AuthApi {
  static final dio =
      Dio(BaseOptions(baseUrl: "https://nongnghiepd24.herokuapp.com/api"));

  Future<Response> register(String address, String fullName, String phoneNumber,
      String password, String email) {
    return dio.post("/register", data: {
      "phoneNumber": phoneNumber,
      "email": email,
      "fullName": fullName,
      "address": address,
      "password": password
    });
  }

  Future<Response> login(String phoneNumber, String password) {
    return dio.post("/login", data: {
      "phoneNumber": phoneNumber,
      "password": password,
    });
  }

  Future<Response> refreshToken(String refreshToken) {
    return dio.post("/refresh-token", data: {
      "refreshToken": refreshToken,
    });
  }
}
