import 'package:exam_app/features/auth/data/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sign_up_response.g.dart';
@JsonSerializable()
class SignUpResponse {
    @JsonKey(name: "message")
    final String? message;
    @JsonKey(name: "token")
    final String? token;
    @JsonKey(name: "user")
    final User? user;

    SignUpResponse({
        this.message,
        this.token,
        this.user,
    });

    factory SignUpResponse.fromJson(Map<String, dynamic> json) => _$SignUpResponseFromJson(json);

    Map<String, dynamic> toJson() => _$SignUpResponseToJson(this);
}

