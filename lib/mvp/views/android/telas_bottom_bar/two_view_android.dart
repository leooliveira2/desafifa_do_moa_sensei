import 'package:flutter/material.dart';

class TwoViewAndroid extends StatefulWidget {
  const TwoViewAndroid({super.key});

  @override
  State<TwoViewAndroid> createState() => _TwoViewAndroidState();
}

class _TwoViewAndroidState extends State<TwoViewAndroid> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Tela 02 no android!"),
        ],
      ),
    );
  }
}