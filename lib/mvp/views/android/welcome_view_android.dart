import 'package:desafifa_do_moa/mvp/pages/login_page.dart';
import 'package:desafifa_do_moa/mvp/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeViewAndroid extends StatefulWidget {
  const WelcomeViewAndroid({super.key});

  @override
  State<WelcomeViewAndroid> createState() => _WelcomeViewAndroidState();
}

class _WelcomeViewAndroidState extends State<WelcomeViewAndroid> {
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
                context.go("/${LoginPage.routeName}");
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
                context.go("/${SignUpPage.routeName}");
              },
              child: const Text("Criar conta"),
            ),
          ],
        ),
      ),
    );
  }
}