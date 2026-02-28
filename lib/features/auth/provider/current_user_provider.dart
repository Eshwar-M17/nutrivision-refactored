// 1. A StreamProvider for the UI to "watch"
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrivision/features/auth/data/models/auth_user.dart';
import 'package:nutrivision/features/auth/data/repository/auth_repository.dart';
import 'package:nutrivision/features/auth/presentation/viewmodel/auth_notifier.dart';
import 'package:nutrivision/features/auth/presentation/viewmodel/state/auth_state.dart';

// The "Current User" is now a derived provider
final currentUserProvider = Provider<AuthUser?>((ref) {
  final authState = ref.watch(authProvider);
  switch (authState) {
    case Authenticated():
      return authState.user;
    case Initial():
    case Unauthenticated():
      return null;
  }
});
