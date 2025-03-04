import '../entities/user.dart';
import '../../data/repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository authRepository;

  LoginUseCase(this.authRepository);

  Future<UserEntity?> execute(String email, String password) async {
    final user = await authRepository.login(email, password);
    if (user != null) {
      return UserEntity(id: user.uid, email: user.email ?? '');
    }
    return null;
  }
}
