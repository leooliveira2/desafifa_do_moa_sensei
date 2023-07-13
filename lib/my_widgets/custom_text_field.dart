import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  final String label;
  bool? isPassword;
  TextInputType? inputType;

  String? valueTextField;

  CustomTextField({super.key, required this.label, this.isPassword, this.inputType});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => {
        widget.valueTextField = value,
      },
      keyboardType: widget.inputType ?? TextInputType.text,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        constraints: const BoxConstraints(
          maxHeight: 40.0,
          maxWidth: 300.0,
          minHeight: 30.0,
          minWidth: 200.0,
        ),
        labelText: widget.label,
      ),
      obscureText: widget.isPassword ?? false,
    );
  }
}

/* class MyTextField extends  {
  String _email = "";
  String _senha = "";

  get email => _email;
  get senha => _senha;

  TextField criarTextFieldEmail() {
    return TextField(
      onChanged: (value) => {
        _email = value,
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        constraints: const BoxConstraints(
          maxHeight: 40.0,
          maxWidth: 300.0,
          minHeight: 30.0,
          minWidth: 200.0,
        ),
        labelText: "Informe seu e-mail",
      ),
    );
  }

  TextField criarTextFieldSenha() {
    return TextField(
      onChanged: (value) => {
       _senha = value, 
      },
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        constraints: const BoxConstraints(
          maxHeight: 40.0,
          maxWidth: 300.0,
          minHeight: 30.0,
          minWidth: 200.0,
        ),
        labelText: "Digite sua senha",
      ),
    );
  }
} */
