import 'package:exam_app/features/auth/domain/entities/verify_reset_code_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_reset_code_response.freezed.dart';
part 'verify_reset_code_response.g.dart';

@freezed
class VerifyResetCodeResponse with _$VerifyResetCodeResponse {
  const factory VerifyResetCodeResponse({
    String? message,
  }) = _VerifyResetCodeResponse;

  factory VerifyResetCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyResetCodeResponseFromJson(json);

  @override
  // TODO: implement message
  String? get message => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}

extension VerifyResetCodeResponseMapper on VerifyResetCodeResponse {
  VerifyResetCodeEntity toEntity() {
    return VerifyResetCodeEntity(message: message);
  }
}