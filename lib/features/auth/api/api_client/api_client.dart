import 'package:dio/dio.dart';
import 'package:exam_app/core/constants/app_endpoints.dart';
import 'package:exam_app/features/auth/data/models/auth_api_response.dart';
import 'package:exam_app/features/auth/data/models/change_password_response.dart';
import 'package:exam_app/features/auth/data/models/logout_response.dart';
import 'package:injectable/injectable.dart';
import 'package:json_annotation/json_annotation.dart';
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



}