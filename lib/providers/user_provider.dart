import 'package:flutter/cupertino.dart';
import 'package:insatgram_clone/models/my_user.dart';
import 'package:insatgram_clone/resources/auth_method.dart';

class UserProvider with ChangeNotifier {
  MyUser? _user;
  final AuthMethods _authMethods = AuthMethods();

  MyUser get getUser => _user!;

  Future<void> refreshUser() async {
    MyUser user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
