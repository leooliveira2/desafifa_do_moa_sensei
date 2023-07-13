import 'package:desafifa_do_moa/mvp/presenters/fifth_presenter.dart';
import 'package:flutter/material.dart';

class FifthViewWindows extends StatefulWidget {
  const FifthViewWindows({super.key});

  @override
  State<FifthViewWindows> createState() => _FifthViewWindowsState();
}

class _FifthViewWindowsState extends State<FifthViewWindows> {
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
          const Text("Tela 05 no windows!"),
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
