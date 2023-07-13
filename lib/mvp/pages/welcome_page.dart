import 'dart:io';

import 'package:desafifa_do_moa/mvp/model/credenciais.dart';
import 'package:desafifa_do_moa/mvp/views/android/welcome_view_android.dart';
import 'package:desafifa_do_moa/mvp/views/wlm/welcome_view_windows.dart';
import 'package:desafifa_do_moa/mvp/repositories/usuarios_repository.dart';
import 'package:flutter/material.dart';

class WelcomePage extends Page {
  static const String routeName = "/";

  @override
  Route createRoute(BuildContext context) {
    Credenciais user = Credenciais(email: "leo", senha: "123");
    UsuariosRepository().salvarUsuario(user);

    return MaterialPageRoute(
      settings: this,
      builder: (context) {
        return Platform.isAndroid
            ? const WelcomeViewAndroid()
            : Platform.isWindows
                ? const WelcomeViewWindows()
                : const WelcomeViewAndroid();
      },
    );
  }
}
