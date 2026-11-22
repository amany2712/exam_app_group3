

import 'package:exam_app/features/auth/data/data_sources/remote/login_remote_data_source.dart';
import 'package:exam_app/features/auth/domain/repositories/login_repository.dart';
import 'package:injectable/injectable.dart';


@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  LoginRemoteDataSource loginRemoteDataSource;
  LoginRepositoryImpl(this.loginRemoteDataSource);
  
  
}