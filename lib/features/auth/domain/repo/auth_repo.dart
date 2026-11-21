import 'package:exam_app/config/base_response/base_response.dart';
import 'package:exam_app/features/auth/data/models/auth_api_response.dart';
import 'package:exam_app/features/auth/domain/entities/auth_entity.dart';

abstract class AuthRepo {
  Future <BaseResponse<AuthEntity>> signUp(); // need to take params?
  Future <BaseResponse<AuthEntity>> signIn(); // need to take params?

}
