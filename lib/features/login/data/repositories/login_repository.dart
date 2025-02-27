import '../data_sources/login_data_source.dart';

class LoginRepository {
  final LoginDataSource dataSource;

  LoginRepository(this.dataSource);

  Future<String?> login(String username, String password) async {
    return await dataSource.authenticate(username, password);
  }
}
