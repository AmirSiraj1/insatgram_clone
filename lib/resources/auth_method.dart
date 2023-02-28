import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

// we are in Time 1:05:36

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // sign up user
  signUpUser({
    required String email,
    required String password,
    required String username,
    required String bio,
    required Uint8List file,
  }) {}
}
