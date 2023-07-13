import 'package:desafifa_do_moa/provider/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FifthPresenter {
  void deslogar(BuildContext context) {
     context.read<Auth>().loggedOut();
  }
}