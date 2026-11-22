// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/auth/api/data_sources/remote/login_remote_data_source_impl.dart'
    as _i729;
import '../../features/auth/api/data_sources/remote/signup_remote_data_source_impl.dart'
    as _i607;
import '../../features/auth/data/data_sources/remote/login_remote_data_source.dart'
    as _i877;
import '../../features/auth/data/data_sources/remote/signup_remote_data_source.dart'
    as _i385;
import '../../features/auth/domain/use_cases/login_use_case.dart' as _i1038;
import '../../features/auth/domain/use_cases/signup_use_case.dart' as _i571;
import '../dio/dio_module.dart' as _i977;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dioModule = _$DioModule();
    gh.factory<_i361.Dio>(() => dioModule.dio);
    gh.factory<_i1038.LoginUseCase>(() => _i1038.LoginUseCase());
    gh.factory<_i571.SignupUseCase>(() => _i571.SignupUseCase());
    gh.lazySingleton<_i385.SignupRemoteDataSource>(
      () => _i607.SignupRemoteDataSourceImpl(),
    );
    gh.lazySingleton<_i877.LoginRemoteDataSource>(
      () => _i729.LoginRemoteDataSourceImpl(),
    );
    return this;
  }
}

class _$DioModule extends _i977.DioModule {}
