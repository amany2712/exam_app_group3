import 'package:exam_app/config/base_response/base_response.dart';
import 'package:exam_app/features/auth/data/models/auth_api_response.dart';
import 'package:exam_app/features/auth/data/models/forget_password_response.dart';
import 'package:exam_app/features/auth/data/models/reset_password_response.dart';
import 'package:exam_app/features/auth/data/models/verify_reset_code_response.dart';
import 'package:exam_app/features/auth/domain/entities/auth_entity.dart';
import 'package:exam_app/features/auth/domain/entities/user_entity.dart';
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

  Future<BaseResponse<ForgetPasswordResponse>> forgotPassword({
  required ForgetPasswordRequest request,
});

Future<BaseResponse<VerifyResetCodeResponse>> verifyResetCode({
  required VerifyResetCodeRequest request,
});

Future<BaseResponse<ResetPasswordResponse>> resetPassword({
  required ResetPasswordRequest request,
});

}
