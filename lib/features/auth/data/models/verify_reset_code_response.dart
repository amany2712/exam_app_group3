import 'package:exam_app/features/auth/domain/entities/verify_reset_code_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_reset_code_response.freezed.dart';
part 'verify_reset_code_response.g.dart';

@freezed
abstract class VerifyResetCodeResponse with _$VerifyResetCodeResponse {
  const factory VerifyResetCodeResponse({
    String? message,
  }) = _VerifyResetCodeResponse;

  factory VerifyResetCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyResetCodeResponseFromJson(json);
}

extension VerifyResetCodeResponseMapper on VerifyResetCodeResponse {
  VerifyResetCodeEntity toEntity() {
    return VerifyResetCodeEntity(message: message);
  }
}