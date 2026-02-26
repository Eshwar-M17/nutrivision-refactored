// Import necessary packages and modules
import 'dart:async';

import 'package:nutrivision/core/logger/app_logger.dart';
import 'package:nutrivision/core/result/result.dart';
import 'package:nutrivision/features/auth/data/models/auth_user.dart';
import 'package:nutrivision/features/auth/data/repository/auth_repository.dart';
import 'package:nutrivision/features/auth/presentation/viewmodel/state/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_notifier.g.dart';

// AuthNotifier is a Riverpod Notifier that manages the authentication state of the user.
@riverpod
class AuthNotifier extends _$AuthNotifier {
  // Instance of AuthRepository to handle authentication operations
  late AuthRepository _authRepository;

  // StreamSubscription to listen to authentication status changes
  late final StreamSubscription _authStatus;

  @override
  AuthState build() {
    // Initialize the AuthRepository instance
    _authRepository = ref.read(authRepositoryProvider);

    // Listen to authentication status changes and update the state accordingly
    _authStatus = _authRepository.authStatusChanges().listen((status) {
      switch (status) {
        case Ok<AuthUser?>():
          if (status.value != null) {
            // Update state to authenticated if a valid user is returned
            state = AuthState.authenticated(
              user: AuthUser(
                email: status.value!.email,
                uid: status.value!.uid,
              ),
            );
          } else {
            // Update state to unauthenticated if no user is returned
            state = AuthState.unauthenticated();
          }
          break;
        case Error<AuthUser?>():
          // Update state to unauthenticated in case of an error
          state = AuthState.unauthenticated();
      }
    });

    // Cancel the subscription when the notifier is disposed
    ref.onDispose(() {
      _authStatus.cancel();
    });

    // Return the initial unauthenticated state
    return AuthState.unauthenticated();
  }

  // Method to handle user sign-up
  Future<Result<AuthUser>> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    appLogger.d("signUp $name $email $password");
    // Call the sign-up method in the repository
    final result = await _authRepository.signUp(
      email: email,
      password: password,
    );

    // Update state to authenticated if sign-up is successful
    if (result.isOk) {
      state = AuthState.authenticated(user: result.getValue!);
      appLogger.d("sign Up complete ${result.getValue?.uid}");
    }

    appLogger.i("${state.runtimeType}");

    return result;
  }

  // Method to handle user sign-in
  Future<Result<AuthUser>> signIn({
    required String email,
    required String password,
  }) async {
    appLogger.d("signIn  email $email password $password");

    // Call the sign-in method in the repository
    final result = await _authRepository.signIn(
      email: email,
      password: password,
    );

    // Update state to authenticated if sign-in is successful
    if (result.isOk) {
      state = AuthState.authenticated(user: result.getValue!);
      appLogger.d("sign in complete ${result.getValue?.uid}");
    }
        appLogger.i("${state.runtimeType}");


    return result;
  }

  // Method to handle user logout
  Future<Result<bool>> logout() async {
    // Call the logout method in the repository
    // no need to update state as lisiner will handle it
    final result = await _authRepository.logout();
    return result;
  }
}
