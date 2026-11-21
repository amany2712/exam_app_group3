import 'package:exam_app/features/auth/data/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_api_response.g.dart';
@JsonSerializable()
class AuthApiResponse {
    @JsonKey(name: "message")
    final String? message;
    @JsonKey(name: "token")
    final String? token;
    @JsonKey(name: "user")
    final User? user;

    AuthApiResponse({
        this.message,
        this.token,
        this.user,
    });

    factory AuthApiResponse.fromJson(Map<String, dynamic> json) => _$AuthApiResponseFromJson(json);

    Map<String, dynamic> toJson() => _$AuthApiResponseToJson(this);
}

