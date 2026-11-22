import 'package:exam_app/features/auth/domain/request_params_class/sign_up_request.dart';

sealed class AuthEvent {}

class SignUpEvent extends AuthEvent {
  final SignUpRequest userData;
  SignUpEvent(this.userData);
}

class SignInEvent extends AuthEvent {
  final String email;
  final String password;
  SignInEvent(this.email, this.password);
}