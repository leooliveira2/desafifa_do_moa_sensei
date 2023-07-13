import 'package:desafifa_do_moa/mvp/presenters/login_presenter.dart';
import 'package:desafifa_do_moa/mvp/views/i_login_view.dart';
import 'package:desafifa_do_moa/my_widgets/custom_alert.dart';
import 'package:desafifa_do_moa/my_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginViewAndroid extends StatefulWidget {
  const LoginViewAndroid({super.key});
  // eu crio uma global key aqui?

  @override
  State<LoginViewAndroid> createState() => LoginViewAndroidState();
}

class LoginViewAndroidState extends State<LoginViewAndroid>
    implements ILoginView {
  late LoginPresenter _presenter;

  @override
  late CustomTextField textFieldEmail;

  @override
  late CustomTextField textFieldSenha;

  @override
  void initState() {
    _presenter = LoginPresenter(view: this, context: context);
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
    showDialog(
      context: context,
      builder: (_) => CustomAlert(titulo: titulo, mensagem: mensagem),
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
              "Login Android",
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
                _presenter.entrarOnClick(
                  textFieldEmail.valueTextField,
                  textFieldSenha.valueTextField,
                ),
              },
              child: const Text("Entrar"),
            ),
          ],
        ),
      ),
    );
  }
}
