import 'dart:io';

import 'package:desafifa_do_moa/mvp/views/android/telas_bottom_bar/fifth_view_android.dart';
import 'package:desafifa_do_moa/mvp/views/base_view.dart';
import 'package:desafifa_do_moa/mvp/views/wlm/telas_bottom_bar/fifth_view_windows.dart';

import 'package:flutter/material.dart';

class FifthPage extends Page {
  static const String routeName = "/fifth";

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (context) {
        return BaseView(
          appBarTitle: "HAAAAA",
          pageBody: Platform.isAndroid
              ? const FifthViewAndroid()
              : Platform.isWindows
                  ? const FifthViewWindows()
                  : const FifthViewAndroid(),
        );
      },
    );
  }
}
