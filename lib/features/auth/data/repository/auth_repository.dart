import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrivision/core/logger/app_logger.dart';
import 'package:nutrivision/core/result/result.dart';
import 'package:nutrivision/features/auth/data/models/auth_user.dart';
import 'package:nutrivision/features/auth/data/source/auth_datasource.dart';

abstract class AuthRepository {
  Future<Result<AuthUser>> signUp({
    required String email,
    required String password,
  });
  Future<Result<AuthUser>> signIn({
    required String email,
    required String password,
  });
  Stream<Result<AuthUser?>> authStatusChanges();
  Future<Result<bool>> logout();
}

final authRepositoryProvider = Provider((ref) {
  return AuthRepositoryImp(authDatasource: ref.read(authRemoteDataSource));
});

class AuthRepositoryImp implements AuthRepository {
  final AuthDatasource _authDatasource;
  const AuthRepositoryImp({required AuthDatasource authDatasource})
    : _authDatasource = authDatasource;
  @override
  Stream<Result<AuthUser?>> authStatusChanges() {
    final transformedStream = _authDatasource.authState().transform(
      StreamTransformer<AuthUser?, Result<AuthUser?>>.fromHandlers(
        handleData: (user, sink) {
          sink.add(Result.ok(user));
        },
        handleError: (error, stackTrace, sink) {
          appLogger.e(error.toString());

          if (error is FirebaseAuthException) {
            sink.add(Result.error(error.message ?? error.toString()));
          } else {
            sink.add(Result.error(error.toString()));
          }
        },
      ),
    );
    return transformedStream;
  }

  @override
  Future<Result<AuthUser>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _authDatasource.signIn(
        email: email,
        password: password,
      );
      return Result.ok(result);
    } on FirebaseAuthException catch (e) {
      appLogger.e(e.toString());

      return Result.error(e.message ?? e.toString());
    } catch (e) {
      appLogger.e(e.toString());

      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<AuthUser>> signUp({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _authDatasource.signUp(
        email: email,
        password: password,
      );
      return Result.ok(result);
    } on FirebaseAuthException catch (e) {
      appLogger.e(e.toString());
      return Result.error(e.message ?? e.toString());
    } catch (e) {
      appLogger.e(e.toString());

      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<bool>> logout() async {
    try {
      await _authDatasource.logout();
      return Result.ok(true);
    } on FirebaseAuthException catch (e) {
      appLogger.e(e.toString());

      return Result.error(e.message ?? e.toString());
    } catch (e) {
      appLogger.e(e.toString());

      return Result.error(e.toString());
    }
  }
}
