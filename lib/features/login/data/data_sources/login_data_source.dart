import 'package:dio/dio.dart';

class LoginDataSource {
  final Dio _dio = Dio();

  Future<String?> authenticate(String username, String password) async {
    try {
      Response response = await _dio.post("https://cognito-api.com/login",
          data: {"username": username, "password": password});

      if (response.statusCode == 200) {
        return response.data["token"];
      }
    } catch (e) {
      print("Error en autenticación: $e");
    }
    return null;
  }
}
