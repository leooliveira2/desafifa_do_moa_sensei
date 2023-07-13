import 'package:desafifa_do_moa/mvp/presenters/welcome_presenter.dart';
import 'package:flutter/material.dart';

class WelcomeViewWindows extends StatefulWidget {
  const WelcomeViewWindows({super.key});

  @override
  State<WelcomeViewWindows> createState() => _WelcomeViewWindowsState();
}

class _WelcomeViewWindowsState extends State<WelcomeViewWindows> {
  final WelcomePresenter _presenter = WelcomePresenter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Bem-vindo ao DESAFIFA DO MOA (Windows)"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                _presenter.entrarOnClick(context);
              },
              child: const Text("Entrar"),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("ou"),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                _presenter.criarContaOnClick(context);
              },
              child: const Text("Criar conta"),
            ),
          ],
        ),
      ),
    );
  }
}
