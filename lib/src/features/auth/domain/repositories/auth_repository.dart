import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:icar/src/core/errors/failure.dart';
import 'package:icar/src/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:icar/src/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:icar/src/features/auth/data/repositories/auth_repository_impl.dart';
// ignore: unused_import
import 'package:icar/src/features/auth/data/repositories/auth_repository_mock.dart';
import 'package:icar/src/features/auth/domain/entities/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  final authRemoteDatasource = ref.watch(authRemoteDatasourceProvider);
  final authLocalDatasource = ref.watch(authLocalDatasourceProvider);
  return AuthRepositoryImpl(authRemoteDatasource, authLocalDatasource);
  // return AuthRepositoryMock(authLocalDatasource);
}

abstract class AuthRepository {
  Future<Either<Failure, User>> getAuthenticatedUserData();
  Future<Either<Failure, User>> signup({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  });
  Future<Either<Failure, User>> login({
    required String email,
    required String password,
  });
  void cacheUser(String token);
  Future<bool> logout();
}
