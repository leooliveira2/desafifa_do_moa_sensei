import 'package:flutter/material.dart';

class Auth extends ChangeNotifier {
  bool _isLogged = false;

  bool get isLogged => _isLogged;

  void loggedIn() {
    _isLogged = true;
    notifyListeners();
  }

  void loggedOut() {
    _isLogged = false;
    notifyListeners();
  }
}
