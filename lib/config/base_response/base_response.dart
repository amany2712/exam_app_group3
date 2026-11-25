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
    //Extract Msg Logic
    if (error is DioException) {
      log(error.message ?? "No Dio Msg", name: "DioException Msg");

      switch (error.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
          return "No Internet";
        case DioExceptionType.badResponse:
          int statusCode = error.response?.statusCode ?? 404;
          //404, 403, 500, 400-499, 500+
          return _getStatusCodeErrorMsg(statusCode);

        default:
          return AppStrings.genericErrorMsg;
      }
    }

    switch (error) {
      default:
        return AppStrings.genericErrorMsg;
    }
  }

  static String _getStatusCodeErrorMsg(int code) {
    switch (code) {
      case 400:
        return "This is 400 code";
      case 404:
        return "This is 404 code";
      case 403:
        return "Unauthorized";
      case 500:
        return "Server Error";
      default:
        return AppStrings.genericErrorMsg;
    }
  }
}