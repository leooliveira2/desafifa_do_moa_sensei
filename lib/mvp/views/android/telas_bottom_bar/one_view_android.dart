import 'package:flutter/material.dart';

class OneViewAndroid extends StatefulWidget {
  const OneViewAndroid({super.key});

  @override
  State<OneViewAndroid> createState() => _OneViewAndroidState();
}

class _OneViewAndroidState extends State<OneViewAndroid> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Tela 01 no android!"),
        ],
      ),
    );
  }
}