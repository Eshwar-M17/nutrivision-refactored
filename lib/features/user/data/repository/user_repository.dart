import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrivision/core/logger/app_logger.dart' show appLogger;
import 'package:nutrivision/core/result/result.dart';
import 'package:nutrivision/features/auth/data/models/auth_user.dart';
import 'package:nutrivision/features/auth/provider/current_user_provider.dart';
import 'package:nutrivision/features/user/data/models/user_model.dart';
import 'package:nutrivision/features/user/data/source/user_remote_datasource.dart';

abstract class UserRepository {
  Future<Result<User?>> getUserInfo();
  Future<Result<bool>> addUserInfo({required User user});
  Future<Result<bool>> updateUserInfo({required User user});
  Future<Result<MacroTarget?>?> getMacroTarget();
}

final userRepositoryProvider = Provider<UserRepository>((ref) {
  final userRemoteDatasource = ref.watch(userRemoteDatasourceProvider);
  final authUser = ref.watch(currentUserProvider);

  return UserRepositoryImp(
    userRemoteDatasource: userRemoteDatasource,
    authUser: authUser,
  );
});

class UserRepositoryImp implements UserRepository {
  const UserRepositoryImp({
    required UserRemoteDatasource userRemoteDatasource,
    AuthUser? authUser,
  }) : _userRemoteDatasource = userRemoteDatasource,
       _authUser = authUser;

  final UserRemoteDatasource _userRemoteDatasource;
  final AuthUser? _authUser;

  bool get _isAuthNull => _authUser == null;

  @override
  Future<Result<bool>> addUserInfo({required User user}) async {
    return _safeExecute<bool>(() async {
      await _userRemoteDatasource.addUserInfo(uid: _authUser!.uid, user: user);
      return true;
    });
  }

  @override
  Future<Result<User?>> getUserInfo() async {
    return _safeExecute(() async {
      return await _userRemoteDatasource.getUserInfo(uid: _authUser!.uid);
    });
  }

  @override
  Future<Result<bool>> updateUserInfo({required User user}) async {
    return _safeExecute<bool>(() async {
      await _userRemoteDatasource.updateUserInfo(
        uid: _authUser!.uid,
        user: user,
      );
      return true;
    });
  }

  @override
  Future<Result<MacroTarget?>> getMacroTarget() async {
    return _safeExecute<MacroTarget?>(() async {
      return await _userRemoteDatasource.getMacroTarget(uid: _authUser!.uid);
    });
  }

  Future<Result<T>> _safeExecute<T>(
    Future<T> Function() operation, {
    bool isAuthRequired = true,
  }) async {
    if (_isAuthNull && isAuthRequired) return Result<T>.error("Unauthorized");
    try {
      return Result<T>.ok(await operation());
    } catch (e) {
      appLogger.e(e.toString());
      return Result<T>.error(e.toString());
    }
  }
}
