import '../../data/repositories/login_repository.dart';

class AuthenticateUser {
  final LoginRepository repository;

  AuthenticateUser(this.repository);

  Future<String?> call(String username, String password) async {
    return await repository.login(username, password);
  }
}
