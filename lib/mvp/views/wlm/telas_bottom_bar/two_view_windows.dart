import 'package:flutter/material.dart';

class TwoViewWindows extends StatefulWidget {
  const TwoViewWindows({super.key});

  @override
  State<TwoViewWindows> createState() => _TwoViewWindowsState();
}

class _TwoViewWindowsState extends State<TwoViewWindows> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Tela 02 no windows!"),
        ],
      ),
    );
  }
}