import 'package:exam_app/features/auth/domain/entities/user_entity.dart';

class AuthEntity {
  final String? message;
  final String? token;
  final UserEntity? user;

  const AuthEntity({
    this.message,
    this.token,
    this.user,
  });
}