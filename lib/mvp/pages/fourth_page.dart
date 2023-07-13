import 'dart:io';

import 'package:desafifa_do_moa/mvp/views/android/telas_bottom_bar/fourth_view_android.dart';
import 'package:desafifa_do_moa/mvp/views/base_view.dart';
import 'package:desafifa_do_moa/mvp/views/wlm/telas_bottom_bar/fourth_view_windows.dart';
import 'package:flutter/material.dart';

class FourthPage extends Page {
  static const String routeName = "/fourth";

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (context) {
        return BaseView(
          appBarTitle: "Me",
          pageBody: Platform.isAndroid
              ? const FourthViewAndroid()
              : Platform.isWindows
                  ? const FourthViewWindows()
                  : const FourthViewAndroid(),
        );
      },
    );
  }
}
