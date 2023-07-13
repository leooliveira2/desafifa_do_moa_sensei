import 'dart:io';

import 'package:desafifa_do_moa/mvp/views/android/telas_bottom_bar/home_view_android.dart';
import 'package:desafifa_do_moa/mvp/views/base_view.dart';
import 'package:desafifa_do_moa/mvp/views/wlm/telas_bottom_bar/home_view_windows.dart';
import 'package:flutter/material.dart';

class HomePage extends Page {
  static const String routeName = "/home";

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (context) {
        return BaseView(
          appBarTitle: "Ha",
          pageBody: Platform.isAndroid
              ? const HomeViewAndroid()
              : Platform.isWindows
                  ? const HomeViewWindows()
                  : const HomeViewAndroid(),
        );
      },
    );
  }
}
