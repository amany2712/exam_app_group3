import 'package:exam_app/config/base_response/base_response.dart';
import 'package:exam_app/features/auth/data/models/forget_password_response.dart';
import 'package:exam_app/features/auth/data/models/reset_password_response.dart';
import 'package:exam_app/features/auth/data/models/verify_reset_code_response.dart';
import 'package:exam_app/features/auth/domain/entities/auth_entity.dart';
import 'package:exam_app/features/auth/domain/repo/auth_repo.dart';
import 'package:exam_app/features/auth/domain/request_params_class/forget_password_request.dart';
import 'package:exam_app/features/auth/domain/request_params_class/reset_password_request.dart';
import 'package:exam_app/features/auth/domain/request_params_class/sign_up_request.dart';
import 'package:exam_app/features/auth/domain/request_params_class/verify_reset_code_request.dart';
import 'package:injectable/injectable.dart';
@LazySingleton(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
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
  Future<BaseResponse<ForgetPasswordResponse>> forgotPassword({
    required ForgetPasswordRequest request,
  }) async {
    try {
      // TODO: Replace mock response with actual API call.

      // final response = await _apiClient.forgotPassword(request);

      await Future.delayed(const Duration(seconds: 1));

      final response = ForgetPasswordResponse(
        message: "Reset code sent successfully",
      );

      return SuccessBaseResponse(data: response);

    } catch (error) {
      return ErrorBaseResponse(errorObj: error);
    }
  }

  @override
  Future<BaseResponse<ResetPasswordResponse>> resetPassword({
    required ResetPasswordRequest request,
  }) async {
    try {
      // TODO: Replace mock response with actual API call.

      // final response = await _apiClient.resetPassword(request);

      await Future.delayed(const Duration(seconds: 1));

      return SuccessBaseResponse(
        data: const ResetPasswordResponse(
          message: "Password reset successfully",
        ),
      );

    } catch (error) {
      return ErrorBaseResponse(errorObj: error);
    }
  }

  @override
  Future<BaseResponse<VerifyResetCodeResponse>> verifyResetCode({
    required VerifyResetCodeRequest request,
  }) async {
    try {
      // TODO: Replace mock response with actual API call.

      // final response = await _apiClient.verifyResetCode(request);

      await Future.delayed(const Duration(seconds: 1));

      if (request.resetCode == "429392") {
        return SuccessBaseResponse(
          data: const VerifyResetCodeResponse(
            message: "Code verified successfully",
          ),
        );
      }

      return ErrorBaseResponse.fromErrorMsg(
        "Invalid Reset Code",
      );

    } catch (error) {
      return ErrorBaseResponse(errorObj: error);
    }
  }
}