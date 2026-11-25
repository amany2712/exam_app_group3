import 'package:exam_app/features/auth/domain/entities/forget_password_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_password_response.freezed.dart';
part 'forget_password_response.g.dart';

@freezed
class ForgetPasswordResponse with _$ForgetPasswordResponse {
  const factory ForgetPasswordResponse({
    String? message,
  }) = _ForgetPasswordResponse;

  factory ForgetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordResponseFromJson(json);

  @override
  // TODO: implement message
  String? get message => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}

extension ForgetPasswordResponseMapper on ForgetPasswordResponse {
  ForgetPasswordEntity toEntity() {
    return ForgetPasswordEntity(message: message);
  }
}