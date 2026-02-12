import 'package:icar/src/features/auth/domain/entities/user.dart';
import 'package:icar/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_user.g.dart';

@Riverpod(keepAlive: true)
class CurrentUser extends _$CurrentUser {
  @override
  Future<User?> build() async {
    final authRepository = ref.watch(authRepositoryProvider);
    final userEither = await authRepository.getAuthenticatedUserData();
    return userEither.fold((failure) => null, (user) => user);
  }

  void setUser(User? user) {
    state = AsyncData(user);
  }
}
