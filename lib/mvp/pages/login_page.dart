import 'dart:io';
import 'package:desafifa_do_moa/mvp/views/android/login_view_android.dart';
import 'package:desafifa_do_moa/mvp/views/wlm/login_view_windows.dart';
import 'package:flutter/material.dart';

class LoginPage extends Page {
  static const String routeName = "login";
  //const LoginPage() : super(key: const ValueKey('LoginPage')); necessário?

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (context) {
        return Platform.isAndroid
            ? const LoginViewAndroid()
            : Platform.isWindows
                ? const LoginViewWindows()
                : const LoginViewAndroid();
      },
    );
  }
}
