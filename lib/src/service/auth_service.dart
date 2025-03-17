import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier {
  User? currentUser;

  bool get isLogin => currentUser != null;

  final auth = FirebaseAuth.instance;

  Future<void> login({
    required String phoneNumber,
  }) async {
    try {
      await auth.signInWithPhoneNumber(
        phoneNumber,
      );
    } catch (e) {
      // print(e);
    }
    notifyListeners();
  }
}
