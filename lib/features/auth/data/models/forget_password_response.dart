import 'package:json_annotation/json_annotation.dart';

part 'forget_password_response.g.dart';

@JsonSerializable()
class ForgetPasswordResponse {
  @JsonKey(name: 'message')
  final String? message;

  const ForgetPasswordResponse({
    this.message,
  });

  factory ForgetPasswordResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ForgetPasswordResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ForgetPasswordResponseToJson(this);
}