import 'package:flutter_bloc/flutter_bloc.dart';

// Eventos
abstract class LoginEvent {}

class LoginSubmitted extends LoginEvent {
  final String email;
  final String password;
  LoginSubmitted(this.email, this.password);
}

// Estados
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginFailure extends LoginState {
  final String message;
  LoginFailure(this.message);
}

// Bloc
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginSubmitted) {
      yield LoginLoading();
      await Future.delayed(const Duration(seconds: 2)); // Simulación
      yield LoginSuccess();
    }
  }
}
