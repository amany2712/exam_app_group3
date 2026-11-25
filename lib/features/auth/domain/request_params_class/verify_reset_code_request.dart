import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_reset_code_request.freezed.dart';
part 'verify_reset_code_request.g.dart';

@freezed
class VerifyResetCodeRequest with _$VerifyResetCodeRequest {
  const factory VerifyResetCodeRequest({
    required String resetCode,
  }) = _VerifyResetCodeRequest;

  factory VerifyResetCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyResetCodeRequestFromJson(json);

  @override
  // TODO: implement resetCode
  String get resetCode => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}