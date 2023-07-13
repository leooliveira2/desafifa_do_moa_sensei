import 'package:flutter/material.dart';

class HomeViewAndroid extends StatefulWidget {
  const HomeViewAndroid({super.key});

  @override
  State<HomeViewAndroid> createState() => _HomeViewAndroidState();
}

class _HomeViewAndroidState extends State<HomeViewAndroid> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Bem-vindo(a), você está no android!")
        ],
      ),
    );
  }
}