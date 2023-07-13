import 'package:flutter/material.dart';

class OneViewWindows extends StatefulWidget {
  const OneViewWindows({super.key});

  @override
  State<OneViewWindows> createState() => _OneViewWindowsState();
}

class _OneViewWindowsState extends State<OneViewWindows> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Tela 01 no windows!"),
        ],
      ),
    );
  }
}