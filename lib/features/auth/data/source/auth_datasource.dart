import "package:firebase_auth/firebase_auth.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:nutrivision/features/auth/data/models/auth_user.dart";

abstract class AuthDatasource {
  Stream<AuthUser?> authState();
  Future<AuthUser> signUp({required String email, required String password});
  Future<AuthUser> signIn({required String email, required String password});
  Future<void> logout();
}

final authRemoteDataSource = Provider<AuthDatasource>((ref) {
  return AuthDatasourceImp();
});

class AuthDatasourceImp implements AuthDatasource {
  @override
  Future<AuthUser> signIn({
    required String email,
    required String password,
  }) async {
    final userCred = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
  );
    return AuthUser(uid: userCred.user!.uid, email: email);
  }

  @override
  Future<AuthUser> signUp({
    required String email,
    required String password,
  }) async {
    final userCred = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return AuthUser(email: email, uid: userCred.user!.uid);
  }

  @override
  Stream<AuthUser?> authState() {
    return FirebaseAuth.instance.authStateChanges().map((user) {
      if (user != null) {
        return AuthUser(email: user.email!, uid: user.uid);
      } else {
        return null;
      }
    });
  }

  @override
  Future<void> logout() async{
   await FirebaseAuth.instance.signOut();
  }
}
