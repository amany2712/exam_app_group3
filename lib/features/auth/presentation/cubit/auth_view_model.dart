import 'package:exam_app/config/base_response/base_response.dart';
import 'package:exam_app/config/base_state/base_state.dart';
import 'package:exam_app/features/auth/domain/entities/auth_entity.dart';
import 'package:exam_app/features/auth/domain/usecases/auth_usecase.dart';
import 'package:exam_app/features/auth/presentation/cubit/auth_event.dart';
import 'package:exam_app/features/auth/presentation/cubit/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
//???
@injectable
class AuthViewModel extends Cubit<AuthState> {
  final AuthUseCase _authUseCase;
  AuthViewModel(this._authUseCase) : super(AuthState());

  void doEvent(AuthEvent event) {
    switch (event) {
      case SignUpEvent():
        _handle(() => _authUseCase.signUpCall(event.userData));
      case SignInEvent():
        _handle(() => _authUseCase.signInCall(event.email, event.password));
    }
  }

  Future<void> _handle(Future<BaseResponse<AuthEntity>> Function() call) async {
    _emit(isLoading: true);
    final result = await call();
    switch (result) {
      case SuccessBaseResponse<AuthEntity>():
        _emit(isLoading: false, data: result.data);
      case ErrorBaseResponse<AuthEntity>():
        _emit(isLoading: false, errMsg: result.errMessage);
    }
  }

  void _emit({required bool isLoading, String? errMsg, AuthEntity? data}) {
    emit(state.copyWith(
      authState: BaseState<AuthEntity>(
        isLoading: isLoading,
        errMsg: errMsg,
        data: data,
      ),
    ));
  }
}


