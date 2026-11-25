import 'package:exam_app/config/base_response/base_response.dart';
import 'package:exam_app/features/auth/domain/entities/auth_entity.dart';
import 'package:exam_app/features/auth/domain/entities/forget_password_entity.dart';
import 'package:exam_app/features/auth/domain/entities/reset_password_entity.dart';
import 'package:exam_app/features/auth/domain/entities/verify_reset_code_entity.dart';
import 'package:exam_app/features/auth/domain/repo/auth_repo.dart';
import 'package:exam_app/features/auth/domain/request_params_class/forget_password_request.dart';
import 'package:exam_app/features/auth/domain/request_params_class/reset_password_request.dart';
import 'package:exam_app/features/auth/domain/request_params_class/sign_up_request.dart';
import 'package:exam_app/features/auth/domain/request_params_class/verify_reset_code_request.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class AuthUseCase {

  AuthRepo authRepo;
  AuthUseCase(this.authRepo);

  Future<BaseResponse<AuthEntity>> signUpCall(SignUpRequest userData) {
    return authRepo.signUp(userData: userData);
  }

  Future <BaseResponse<AuthEntity>> signInCall (String email, String password) async {
    return authRepo.signIn(email: email, password: password);
  }

  Future<BaseResponse<ForgetPasswordEntity>> forgotPasswordCall(
  ForgetPasswordRequest request,
) {
  return authRepo.forgotPassword(request: request);
}

Future<BaseResponse<VerifyResetCodeEntity>> verifyResetCodeCall(
  VerifyResetCodeRequest request,
) {
  return authRepo.verifyResetCode(request: request);
}

Future<BaseResponse<ResetPasswordEntity>> resetPasswordCall(
  ResetPasswordRequest request,
) {
  return authRepo.resetPassword(request: request);
}
}
