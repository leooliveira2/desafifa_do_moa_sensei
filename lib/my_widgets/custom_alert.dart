import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAlert extends StatefulWidget {
  String titulo;
  String mensagem;
  String? textoBotao;
  bool? barrierDismissible;

  CustomAlert({
    super.key,
    required this.titulo,
    required this.mensagem,
    this.textoBotao,
    this.barrierDismissible,
  });

  @override
  State<CustomAlert> createState() => _CustomAlertState();
}

class _CustomAlertState extends State<CustomAlert> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        widget.titulo,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      content: Text(
        widget.mensagem,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => {Navigator.of(context).pop()},
          child: Text(
            widget.textoBotao ?? "Ok",
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        )
      ],
      backgroundColor: Colors.indigo,
      shape: const Border(
        top: BorderSide(
          color: Colors.black,
          style: BorderStyle.solid,
        ),
        bottom: BorderSide(
          color: Colors.black,
          style: BorderStyle.solid,
        ),
        left: BorderSide(
          color: Colors.black,
          style: BorderStyle.solid,
        ),
        right: BorderSide(
          color: Colors.black,
          style: BorderStyle.solid,
        ),
      ),
    );
  }
}
