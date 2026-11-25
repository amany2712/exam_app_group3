
import 'package:exam_app/config/base_response/base_response.dart';
import 'package:exam_app/config/base_state/base_state.dart';
import 'package:exam_app/features/auth/domain/entities/auth_entity.dart';
import 'package:exam_app/features/auth/domain/entities/forget_password_entity.dart';
import 'package:exam_app/features/auth/domain/entities/verify_reset_code_entity.dart';
import 'package:exam_app/features/auth/domain/entities/reset_password_entity.dart';
import 'package:exam_app/features/auth/domain/usecases/auth_usecase.dart';
import 'package:exam_app/features/auth/presentation/cubit/auth_event.dart';
import 'package:exam_app/features/auth/presentation/cubit/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthViewModel extends Cubit<AuthState> {
  final AuthUseCase _authUseCase;

  AuthViewModel(this._authUseCase) : super(AuthState());

  void doEvent(AuthEvent event) {
    switch (event) {
      case SignUpEvent():
        _handle<AuthEntity>(
          call: () => _authUseCase.signUpCall(event.userData),
          updateState: (value) =>
              emit(state.copyWith(authState: value)),
        );

      case SignInEvent():
        _handle<AuthEntity>(
          call: () => _authUseCase.signInCall(event.email, event.password),
          updateState: (value) =>
              emit(state.copyWith(authState: value)),
        );

      case ForgotPasswordEvent():
        _handle<ForgetPasswordEntity>(
          call: () => _authUseCase.forgotPasswordCall(event.request),
          updateState: (value) =>
              emit(state.copyWith(forgotPasswordState: value)),
        );

      case VerifyResetCodeEvent():
        _handle<VerifyResetCodeEntity>(
          call: () => _authUseCase.verifyResetCodeCall(event.request),
          updateState: (value) =>
              emit(state.copyWith(verifyResetCodeState: value)),
        );

      case ResetPasswordEvent():
        _handle<ResetPasswordEntity>(
          call: () => _authUseCase.resetPasswordCall(event.request),
          updateState: (value) =>
              emit(state.copyWith(resetPasswordState: value)),
        );
    }
  }

  Future<void> _handle<T>({
    required Future<BaseResponse<T>> Function() call,
    required void Function(BaseState<T>) updateState,
  }) async {
    updateState(BaseState<T>(isLoading: true));

    final result = await call();

    switch (result) {
      case SuccessBaseResponse<T>():
        updateState(
          BaseState<T>(
            isLoading: false,
            data: result.data,
          ),
        );

      case ErrorBaseResponse<T>():
        updateState(
          BaseState<T>(
            isLoading: false,
            errMsg: result.errMessage,
          ),
        );
    }
  }
}
