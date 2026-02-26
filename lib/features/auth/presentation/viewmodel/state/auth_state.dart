import 'package:nutrivision/features/auth/data/models/auth_user.dart';

sealed class AuthState {
  factory AuthState.initial() = Initial;
  factory AuthState.authenticated({required AuthUser user}) = Authenticated;
  factory AuthState.unauthenticated() = Unauthenticated;
}

class Initial implements AuthState {}

class Authenticated implements AuthState {
  final AuthUser user;
  Authenticated({required this.user});
}

class Unauthenticated implements AuthState {}
