import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrivision/core/result/result.dart';
import 'package:nutrivision/features/user/data/models/user_model.dart';
import 'package:nutrivision/features/user/data/repository/user_repository.dart';

class UserNotifier extends AsyncNotifier<User?> {
  @override
  FutureOr<User?> build() async {
    final result = await ref.read(userRepositoryProvider).getUserInfo();

    switch (result) {
      case Ok<User?>():
        return result.value;
      case Error<User?>():
        throw result.message;
    }
  }

  Future<Result<bool>> updateUserInfo({required User user}) async {
    final result = await ref
        .read(userRepositoryProvider)
        .updateUserInfo(user: user);
    if (result.isOk) {
      state = AsyncData(user);
    }
    return result;
  }

  Future<Result<bool>> addUserInfo({required User user}) async {
    final result = await ref
        .read(userRepositoryProvider)
        .addUserInfo(user: user);
    if (result.isOk) {
      state = AsyncData(user);
    }
    return result;
  }
}
