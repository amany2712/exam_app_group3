

import 'package:exam_app/features/auth/data/data_sources/remote/signup_remote_data_source.dart';
import 'package:exam_app/features/auth/domain/repositories/signup_repository.dart';
import 'package:injectable/injectable.dart';


@Injectable(as: SignupRepository)
class SignupRepositoryImpl implements SignupRepository {
  SignupRemoteDataSource signupRemoteDataSource;
  SignupRepositoryImpl(this.signupRemoteDataSource);
  
  
}