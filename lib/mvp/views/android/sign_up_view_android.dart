import 'package:desafifa_do_moa/mvp/presenters/sign_up_presenter.dart';
import 'package:desafifa_do_moa/mvp/views/i_signup_view.dart';
import 'package:desafifa_do_moa/my_widgets/custom_alert.dart';
import 'package:desafifa_do_moa/my_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignUpViewAndroid extends StatefulWidget {
  const SignUpViewAndroid({super.key});

  @override
  State<SignUpViewAndroid> createState() => _SignUpViewAndroidState();
}

class _SignUpViewAndroidState extends State<SignUpViewAndroid>
    implements ISignUpView {
  late SignUpPresenter _presenter;

  @override
  late CustomTextField textFieldEmail;

  @override
  late CustomTextField textFieldSenha;

  @override
  void initState() {
    _presenter = SignUpPresenter(view: this, context: context);

    textFieldEmail = CustomTextField(
      label: "Informe seu e-mail",
      inputType: TextInputType.emailAddress,
    );

    textFieldSenha = CustomTextField(
      label: "Informe sua senha",
      isPassword: true,
    );

    super.initState();
  }

  @override
  void exibirAlerta(String titulo, String mensagem) {
    CustomAlert alerta = CustomAlert(titulo: titulo, mensagem: mensagem);

    showDialog(
      context: context,
      builder: (_) => alerta,
      barrierDismissible: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Criar Conta Android",
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 35,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            textFieldEmail,
            const SizedBox(
              height: 20,
            ),
            textFieldSenha,
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => {
                _presenter.criarContaOnClick(
                  textFieldEmail.valueTextField,
                  textFieldSenha.valueTextField,
                ),
              },
              child: const Text("Criar Conta"),
            ),
          ],
        ),
      ),
    );
  }
}
