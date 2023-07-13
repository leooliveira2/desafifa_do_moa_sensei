import 'dart:io';

import 'package:desafifa_do_moa/mvp/views/android/sign_up_view_android.dart';
import 'package:desafifa_do_moa/mvp/views/wlm/sign_up_view_windows.dart';
import 'package:flutter/material.dart';

class SignUpPage extends Page {
  static const String routeName = "sign_up";

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (context) {
        return Platform.isAndroid
            ? const SignUpViewAndroid()
            : Platform.isWindows
                ? const SignUpViewWindows()
                : const SignUpViewAndroid();
      },
    );
  }
}
