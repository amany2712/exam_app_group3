import 'package:exam_app/config/base_response/base_response.dart';
import 'package:exam_app/features/auth/domain/entities/auth_entity.dart';
import 'package:exam_app/features/auth/domain/entities/forget_password_entity.dart';
import 'package:exam_app/features/auth/domain/entities/reset_password_entity.dart';
import 'package:exam_app/features/auth/domain/entities/verify_reset_code_entity.dart';
import 'package:exam_app/features/auth/domain/request_params_class/forget_password_request.dart';
import 'package:exam_app/features/auth/domain/request_params_class/reset_password_request.dart';
import 'package:exam_app/features/auth/domain/request_params_class/sign_up_request.dart';
import 'package:exam_app/features/auth/domain/request_params_class/verify_reset_code_request.dart';

abstract class AuthRepo {
  Future <BaseResponse<AuthEntity>> signUp({
    required SignUpRequest userData
    });
  Future <BaseResponse<AuthEntity>> signIn({
    required String email,
    required String password});

  Future<BaseResponse<ForgetPasswordEntity>> forgotPassword({
    required ForgetPasswordRequest request,
  });

  Future<BaseResponse<VerifyResetCodeEntity>> verifyResetCode({
    required VerifyResetCodeRequest request,
  });

  Future<BaseResponse<ResetPasswordEntity>> resetPassword({
    required ResetPasswordRequest request,
  });

}
