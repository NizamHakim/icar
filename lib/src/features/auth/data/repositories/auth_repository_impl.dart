import 'package:fpdart/fpdart.dart';
import 'package:icar/src/core/errors/exception.dart';
import 'package:icar/src/core/errors/failure.dart';
import 'package:icar/src/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:icar/src/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:icar/src/features/auth/domain/entities/user.dart';
import 'package:icar/src/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDatasource _authRemote;
  final AuthLocalDatasource _authLocal;

  AuthRepositoryImpl(this._authRemote, this._authLocal);

  @override
  Future<Either<Failure, User>> getAuthenticatedUserData() async {
    try {
      final token = _authLocal.getToken();
      if (token == null) {
        return const Left(AuthFailure(message: "no_authentication_token"));
      }
      final result = await _authRemote.getUser(token);
      return Right(result.toEntity());
    } on UnauthorizedException catch (e) {
      await _authLocal.clearToken();
      return Left(AuthFailure(message: e.message));
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, User>> login({
    required String email,
    required String password,
  }) async {
    try {
      final userDto = await _authRemote.login(email: email, password: password);
      return Right(userDto.toEntity());
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, User>> signup({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      final userDto = await _authRemote.signup(
        name: name,
        email: email,
        password: password,
        confirmPassword: confirmPassword,
      );
      return Right(userDto.toEntity());
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  void cacheUser(String token) {
    _authLocal.saveToken(token);
  }

  @override
  Future<bool> logout() async {
    return await _authLocal.clearToken();
  }
}
