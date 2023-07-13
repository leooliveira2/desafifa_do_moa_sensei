import 'package:flutter/material.dart';

class FourthViewAndroid extends StatefulWidget {
  const FourthViewAndroid({super.key});

  @override
  State<FourthViewAndroid> createState() => _FourthViewAndroidState();
}

class _FourthViewAndroidState extends State<FourthViewAndroid> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Tela 04 no android!"),
        ],
      ),
    );
  }
}