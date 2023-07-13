import 'package:flutter/material.dart';

class FourthViewWindows extends StatefulWidget {
  const FourthViewWindows({super.key});

  @override
  State<FourthViewWindows> createState() => _FourthViewWindowsState();
}

class _FourthViewWindowsState extends State<FourthViewWindows> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Tela 04 no windows!"),
        ],
      ),
    );
  }
}