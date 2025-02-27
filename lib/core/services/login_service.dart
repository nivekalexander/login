import 'package:dio/dio.dart';

class LoginService {
  final Dio _dio = Dio();

  Future<bool> authenticateUser(String username, String password) async {
    try {
      // Simulación de autenticación con Cognito
      Response response = await _dio.post("https://cognito-api.com/login",
          data: {"username": username, "password": password});

      if (response.statusCode == 200) {
        // Enviar token a `chasis`
        await _dio.post("http://localhost:3000/setToken",
            data: {"token": response.data["token"]});
        return true;
      }
    } catch (e) {
      print("Error en login: $e");
    }
    return false;
  }

  Future<void> logout() async {
    await _dio.post("http://localhost:3000/logout");
  }
}
