import 'package:desafifa_do_moa/mvp/presenters/fifth_presenter.dart';
import 'package:flutter/material.dart';

class FifthViewAndroid extends StatefulWidget {
  const FifthViewAndroid({super.key});

  @override
  State<FifthViewAndroid> createState() => _FifthViewAndroidState();
}

class _FifthViewAndroidState extends State<FifthViewAndroid> {
  late FifthPresenter _presenter;

  @override
  void initState() {
    _presenter = FifthPresenter();

    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Tela 05 no android!"),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              _presenter.deslogar(context);
            },
            child: const Text("Sair da conta"),
          ),
        ],
      ),
    );
  }
}