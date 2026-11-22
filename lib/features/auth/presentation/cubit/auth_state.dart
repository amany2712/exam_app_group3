import 'package:exam_app/config/base_state/base_state.dart';
import 'package:exam_app/features/auth/domain/entities/auth_entity.dart';
import 'package:exam_app/features/auth/domain/entities/user_entity.dart';

class AuthState {
  final BaseState<AuthEntity> authState;

  AuthState({BaseState<AuthEntity>? authState})
      : authState = authState ??
      BaseState<AuthEntity>(isLoading: false, errMsg: null, data: null);

  AuthState copyWith({BaseState<AuthEntity>? authState}) =>
      AuthState(authState: authState ?? this.authState);
}




// class AuthState {
//   BaseState<UserEntity>? signUpUser;
//   BaseState<UserEntity>? signInUser;
//
//   AuthState ({this.signUpUser, this.signInUser}) {
//     signUpUser = signUpUser ?? BaseState<UserEntity>(
//       isLoading: true,
//       errMsg: null,
//       data: UserEntity(  // ??how get this data?
//         email: "",
//         name: "",
//         id: 0,
//       )
//     );
//     signInUser = signInUser ?? BaseState<UserEntity>(
//       isLoading: true,
//       errMsg: null,
//       data: UserEntity(  // ??how get this data?
//         email: "",
//         name: "",
//         id: 0,
//       )
//     );
//   }
//
//
//   //??send user only hear not signup and sign in user because i never will be have two users at one time
//   AuthState copyWith ({BaseState<UserEntity>? signUpUser, BaseState<UserEntity>? user}) {
//     return AuthState(
//       signUpUser: user,
//       signInUser: user,
//     );
//   }
// }
