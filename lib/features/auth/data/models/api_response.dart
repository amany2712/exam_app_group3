import 'package:exam_app/features/auth/data/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_response.g.dart';
@JsonSerializable()
class ApiResponse {
    @JsonKey(name: "message")
    final String? message;
    @JsonKey(name: "token")
    final String? token;
    @JsonKey(name: "user")
    final User? user;

    ApiResponse({
        this.message,
        this.token,
        this.user,
    });

    factory ApiResponse.fromJson(Map<String, dynamic> json) => _$ApiResponseFromJson(json);

    Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}

