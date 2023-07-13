import 'package:flutter/material.dart';

class HomeViewWindows extends StatefulWidget {
  const HomeViewWindows({super.key});

  @override
  State<HomeViewWindows> createState() => _HomeViewWindowsState();
}

class _HomeViewWindowsState extends State<HomeViewWindows> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Bem-vindo(a), você está no windows!")
        ],
      ),
    );
  }
}