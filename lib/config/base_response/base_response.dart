import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:exam_app/core/constants/app_strings.dart';

// error handle
sealed class BaseResponse<T> {}

class SuccessBaseResponse<T> extends BaseResponse<T> {
  T data;

  SuccessBaseResponse({required this.data});
}

class ErrorBaseResponse<T> extends BaseResponse<T> {
  String errMessage;

  ErrorBaseResponse.fromErrorMsg(this.errMessage);

  ErrorBaseResponse({Object? errorObj})
      : errMessage = errorObj == null
      ? AppStrings.genericErrorMsg
      : _getErrorMsg(errorObj);

  static String _getErrorMsg(Object error) {
  if (error is DioException) {
    log(
      error.message ?? "No Dio Message",
      name: "DioException",
    );

    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return "Connection timeout. Please try again.";

      case DioExceptionType.connectionError:
        return "No Internet Connection";

      case DioExceptionType.badResponse:
        final responseData = error.response?.data;

        if (responseData is Map<String, dynamic>) {
          final message = responseData['message'];

          if (message is String && message.isNotEmpty) {
            return message;
          }
        }

        final statusCode = error.response?.statusCode ?? 500;

        return _getStatusCodeErrorMsg(statusCode);

      case DioExceptionType.cancel:
        return "Request cancelled";

      default:
        return AppStrings.genericErrorMsg;
    }
  }

  return AppStrings.genericErrorMsg;
}

static String _getStatusCodeErrorMsg(int code) {
  switch (code) {
    case 400:
      return "Invalid request";

    case 401:
      return "Unauthorized";

    case 403:
      return "Forbidden";

    case 404:
      return "Resource not found";

    case 500:
    case 502:
    case 503:
      return "Server Error";

    default:
      return AppStrings.genericErrorMsg;
  }
}
}