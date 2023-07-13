import 'dart:io';

import 'package:desafifa_do_moa/mvp/views/android/telas_bottom_bar/one_view_android.dart';
import 'package:desafifa_do_moa/mvp/views/base_view.dart';
import 'package:desafifa_do_moa/mvp/views/wlm/telas_bottom_bar/one_view_windows.dart';
import 'package:flutter/material.dart';

class OnePage extends Page {
  static const String routeName = "/one";

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (context) {
        return BaseView(
          appBarTitle: "Ka",
          pageBody: Platform.isAndroid
              ? const OneViewAndroid()
              : Platform.isWindows
                  ? const OneViewWindows()
                  : const OneViewAndroid(),
        );
      },
    );
  }
}
