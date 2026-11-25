import 'package:dio/dio.dart';
import 'package:exam_app/core/constants/app_endpoints.dart';
import 'package:exam_app/features/auth/data/models/auth_api_response.dart';
import 'package:exam_app/features/auth/data/models/change_password_response.dart';
import 'package:exam_app/features/auth/data/models/forget_password_response.dart';
import 'package:exam_app/features/auth/data/models/logout_response.dart';
import 'package:exam_app/features/auth/data/models/reset_password_response.dart';
import 'package:exam_app/features/auth/data/models/verify_reset_code_response.dart';
import 'package:exam_app/features/auth/domain/request_params_class/forget_password_request.dart';
import 'package:exam_app/features/auth/domain/request_params_class/reset_password_request.dart';
import 'package:exam_app/features/auth/domain/request_params_class/verify_reset_code_request.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class AuthApiClient {
  factory AuthApiClient(Dio dio) = _AuthApiClient;

  @POST(AppEndpoints.signUp)
  Future<AuthApiResponse> signUP();

   @POST(AppEndpoints.signIn)
  Future<AuthApiResponse> signIn();

   @PATCH(AppEndpoints.changePassword)
  Future<ChangePasswordResponse> changePassword();

  @GET(AppEndpoints.logout)
  Future<LogoutResponse> logout();

  // Forget Password
  @POST(AppEndpoints.forgotPassword)
  Future<ForgetPasswordResponse> forgotPassword(
    @Body() ForgetPasswordRequest request,
  );

   // Verify Reset Code
  @POST(AppEndpoints.verifyResetCode)
  Future<VerifyResetCodeResponse> verifyResetCode(
    @Body() VerifyResetCodeRequest request,
  );

   // Reset Password
  @POST(AppEndpoints.resetPassword)
  Future<ResetPasswordResponse> resetPassword(
    @Body() ResetPasswordRequest request,
  );



}