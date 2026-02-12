import 'package:fpdart/src/either.dart';
import 'package:icar/src/core/errors/failure.dart';
import 'package:icar/src/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:icar/src/features/auth/domain/entities/user.dart';
import 'package:icar/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:icar/src/utils/fake_data.dart';

class AuthRepositoryMock extends AuthRepository {
  final AuthLocalDatasource _authLocal;

  AuthRepositoryMock(this._authLocal);

  @override
  void cacheUser(String token) {
    _authLocal.saveToken(token);
  }

  @override
  Future<Either<Failure, User>> getAuthenticatedUserData() async {
    return Right(fakeUser);
  }

  @override
  Future<Either<Failure, User>> login({
    required String email,
    required String password,
  }) async {
    return Right(fakeUser);
  }

  @override
  Future<bool> logout() async {
    return await _authLocal.clearToken();
  }

  @override
  Future<Either<Failure, User>> signup({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    return Right(fakeUser);
  }
}
