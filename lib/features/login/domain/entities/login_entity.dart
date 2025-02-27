class LoginEntity {
  final String token;
  final String username;
  final String role;

  LoginEntity(
      {required this.token, required this.username, required this.role});
}
