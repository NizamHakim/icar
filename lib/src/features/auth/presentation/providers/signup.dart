import 'package:icar/src/core/errors/failure.dart';

import 'package:icar/src/features/auth/domain/entities/user.dart';
import 'package:icar/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:icar/src/features/auth/presentation/providers/current_user.dart';
import 'package:icar/src/features/auth/presentation/providers/states/signup_form_errors_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signup.g.dart';

@riverpod
class Signup extends _$Signup {
  @override
  FutureOr<User?> build() {
    return null;
  }

  Future<void> signup({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    state = const AsyncValue.loading();
    final authRepository = ref.read(authRepositoryProvider);
    final signupFormErrorsNotifier = ref.read(
      signupFormErrorsProvider.notifier,
    );
    final userEither = await authRepository.signup(
      name: name,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
    );

    userEither.fold(
      (failure) {
        if (failure case ValidationFailure(errors: final errors)) {
          signupFormErrorsNotifier.updateError(errors);
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
class SignupFormErrors extends _$SignupFormErrors {
  @override
  SignupFormErrorsState build() {
    return const SignupFormErrorsState();
  }

  void updateError(Map<String, String> errors) {
    state = SignupFormErrorsState.fromJson(errors);
  }
}
