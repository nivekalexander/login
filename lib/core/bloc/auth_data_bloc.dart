import 'package:flutter_bloc/flutter_bloc.dart';
import '../services/login_service.dart';

// Eventos de autenticación
abstract class AuthEvent {}

class LoginRequested extends AuthEvent {
  final String username;
  final String password;
  LoginRequested(this.username, this.password);
}

class LogoutRequested extends AuthEvent {}

// Estados de autenticación
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthAuthenticated extends AuthState {}

class AuthFailure extends AuthState {}

class AuthLoggedOut extends AuthState {}

// Bloc de autenticación
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginService loginService;

  AuthBloc(this.loginService) : super(AuthInitial()) {
    on<LoginRequested>(_onLoginRequested);
    on<LogoutRequested>(_onLogoutRequested);
  }

  Future<void> _onLoginRequested(
      LoginRequested event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    bool success =
        await loginService.authenticateUser(event.username, event.password);
    emit(success ? AuthAuthenticated() : AuthFailure());
  }

  Future<void> _onLogoutRequested(
      LogoutRequested event, Emitter<AuthState> emit) async {
    await loginService.logout();
    emit(AuthLoggedOut());
  }
}
