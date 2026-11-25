import 'package:exam_app/config/base_response/base_response.dart';
import 'package:exam_app/features/auth/api/api_client/api_client.dart';
import 'package:exam_app/features/auth/data/models/forget_password_response.dart';
import 'package:exam_app/features/auth/data/models/reset_password_response.dart';
import 'package:exam_app/features/auth/data/models/verify_reset_code_response.dart';
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
@LazySingleton(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  final AuthApiClient _apiClient;

  AuthRepoImpl(this._apiClient);
  @override
  Future<BaseResponse<AuthEntity>> signIn({required String email, required String password}) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<BaseResponse<AuthEntity>> signUp({required SignUpRequest userData}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

  @override
  Future<BaseResponse<ForgetPasswordEntity>> forgotPassword({
    required ForgetPasswordRequest request,
  }) async {
    try {
      // TODO: Replace mock response with actual API call in forgotPassword method.
      // final response = await _apiClient.forgotPassword(request);

      await Future.delayed(const Duration(seconds: 1));

      const response = ForgetPasswordResponse(
        message: "Reset code sent successfully",
      );

      return SuccessBaseResponse(data: response.toEntity());
    } catch (error) {
      return ErrorBaseResponse(errorObj: error);
    }
  }

   @override
  Future<BaseResponse<ResetPasswordEntity>> resetPassword({
    required ResetPasswordRequest request,
  }) async {
    try {
      // TODO: Replace mock response with actual API call.
      // final response = await _apiClient.resetPassword(request);

      await Future.delayed(const Duration(seconds: 1));

      const response = ResetPasswordResponse(
        message: "Password reset successfully",
      );

      return SuccessBaseResponse(data: response.toEntity());
    } catch (error) {
      return ErrorBaseResponse(errorObj: error);
    }
  }
 @override
  Future<BaseResponse<VerifyResetCodeEntity>> verifyResetCode({
    required VerifyResetCodeRequest request,
  }) async {
    try {
      // TODO: Replace mock response with actual API call.
      // final response = await _apiClient.verifyResetCode(request);

      await Future.delayed(const Duration(seconds: 1));

      if (request.resetCode == "429392") {
        const response = VerifyResetCodeResponse(
          message: "Code verified successfully",
        );

        return SuccessBaseResponse(data: response.toEntity());
      }

      return ErrorBaseResponse.fromErrorMsg("Invalid Reset Code");
    } catch (error) {
      return ErrorBaseResponse(errorObj: error);
    }
  }
}