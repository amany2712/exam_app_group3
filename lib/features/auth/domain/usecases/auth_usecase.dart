import 'package:exam_app/config/base_response/base_response.dart';
import 'package:exam_app/features/auth/domain/entities/auth_entity.dart';
import 'package:exam_app/features/auth/domain/repo/auth_repo.dart';

class AuthUseCase {

  AuthRepo authRepo;
  AuthUseCase(this.authRepo);

  Future <BaseResponse<AuthEntity>> signUpCall () async {
    return authRepo.signUp();
  }

  Future <BaseResponse<AuthEntity>> signInCall () async {
    return authRepo.signIn();
  }
}