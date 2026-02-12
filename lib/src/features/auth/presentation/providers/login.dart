import 'package:icar/src/core/errors/failure.dart';

import 'package:icar/src/features/auth/domain/entities/user.dart';
import 'package:icar/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:icar/src/features/auth/presentation/providers/current_user.dart';
import 'package:icar/src/features/auth/presentation/providers/states/login_form_errors_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login.g.dart';

@riverpod
class Login extends _$Login {
  @override
  FutureOr<User?> build() {
    return null;
  }

  Future<void> login({required String email, required String password}) async {
    state = const AsyncValue.loading();
    final authRepository = ref.read(authRepositoryProvider);
    final loginFormErrorsNotifier = ref.read(loginFormErrorsProvider.notifier);
    final userEither = await authRepository.login(
      email: email,
      password: password,
    );

    userEither.fold(
      (failure) {
        if (failure case ValidationFailure(errors: final errors)) {
          loginFormErrorsNotifier.updateError(errors);
          state = const AsyncData(null);
        } else {
          state = AsyncError(failure, StackTrace.current);
        }
      },
      (data) {
        final user = data;
        authRepository.cacheUser(user.token);
        ref.read(currentUserProvider.notifier).setUser(user);
        state = AsyncData(user);
      },
    );
  }
}

@riverpod
class LoginFormErrors extends _$LoginFormErrors {
  @override
  LoginFormErrorsState build() {
    return const LoginFormErrorsState();
  }

  void updateError(Map<String, String> errors) {
    state = LoginFormErrorsState.fromJson(errors);
  }
}
