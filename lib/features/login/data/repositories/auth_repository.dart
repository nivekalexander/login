import 'package:firebase_auth/firebase_auth.dart';
import '../data_sources/auth_remote_data_source.dart';

class AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepository(this.remoteDataSource);

  Future<User?> login(String email, String password) async {
    return await remoteDataSource.login(email, password);
  }
}
