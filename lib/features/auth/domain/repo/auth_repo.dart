import 'package:exam_app/config/base_response/base_response.dart';
import 'package:exam_app/features/auth/data/models/auth_api_response.dart';
import 'package:exam_app/features/auth/domain/entities/auth_entity.dart';
import 'package:exam_app/features/auth/domain/entities/user_entity.dart';
import 'package:exam_app/features/auth/domain/request_params_class/sign_up_request.dart';

abstract class AuthRepo {
  Future <BaseResponse<AuthEntity>> signUp({required SignUpRequest userData});
  Future <BaseResponse<AuthEntity>> signIn({required String email, required String password});

}
