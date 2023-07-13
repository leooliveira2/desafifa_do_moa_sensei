import 'package:desafifa_do_moa/mvp/pages/login_page.dart';
import 'package:desafifa_do_moa/mvp/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomePresenter {
  void entrarOnClick(BuildContext context) {
    context.goNamed(LoginPage.routeName);
  }

  void criarContaOnClick(BuildContext context) {
    context.goNamed(SignUpPage.routeName);
  }
}