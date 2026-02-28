import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrivision/features/user/data/models/user_model.dart';

abstract class UserRemoteDatasource {
  Future<User?> getUserInfo({required String uid});
  Future<void> addUserInfo({required String uid, required User user});
  Future<void> updateUserInfo({required String uid, required User user});
  Future<MacroTarget?> getMacroTarget({required String uid});
}

final userRemoteDatasourceProvider = Provider<UserRemoteDatasourceImpl>(
  (ref) => UserRemoteDatasourceImpl(),
);

class UserRemoteDatasourceImpl implements UserRemoteDatasource {
  @override
  Future<void> addUserInfo({required String uid, required User user}) async {
    await FirebaseFirestore.instance
        .collection("user")
        .doc(uid)
        .set(user.toJson());
  }

  @override
  Future<MacroTarget?> getMacroTarget({required String uid}) async {
    final doc = await FirebaseFirestore.instance
        .collection("dri")
        .doc(uid)
        .get();
    if (!doc.exists) {
      return null;
    }

    return MacroTarget.fromJson(doc.data()!);
  }

  @override
  Future<User?> getUserInfo({required String uid}) async {
    final doc = await FirebaseFirestore.instance
        .collection("user")
        .doc(uid)
        .get();
    if (!doc.exists) {
      return null;
    }

    return User.fromJson(doc.data()!);
  }

  @override
  Future<void> updateUserInfo({required String uid, required User user}) async {
    await FirebaseFirestore.instance
        .collection("user")
        .doc(uid)
        .update(user.toJson());
  }
}
