import 'package:dio/dio.dart';
import 'package:exam_app/core/constants/app_endpoints.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioModule{
  
  //@lazySingleton
  Dio get dio => Dio(
    BaseOptions(
      baseUrl: AppEndpoints.baseUrl,
      connectTimeout:const Duration(seconds: 10),
      receiveTimeout:const Duration(seconds: 10),
    )
  );


}