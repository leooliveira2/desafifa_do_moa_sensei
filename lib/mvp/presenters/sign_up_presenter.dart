import 'package:desafifa_do_moa/mvp/model/credenciais.dart';
import 'package:desafifa_do_moa/mvp/repositories/usuarios_repository.dart';
import 'package:desafifa_do_moa/mvp/views/i_signup_view.dart';
import 'package:flutter/material.dart';

class SignUpPresenter {
  final ISignUpView view;
  final BuildContext context;

  SignUpPresenter({
    required this.view,
    required this.context,
  });

  void criarContaOnClick(String? email, String? senha) {
    if (email == null || senha == null) {
      view.exibirAlerta(
        "Erro",
        "Conta não pôde ser criada! Tente novamente informando um e-mail válido e uma senha com pelo menos 1 caractere",
      );

      return;
    }

    Credenciais usuario = Credenciais(email: email, senha: senha);

    bool contaFoiCriada = criarConta(usuario: usuario);

    if (!contaFoiCriada) {
      view.exibirAlerta("Erro",
          "Conta não pôde ser criada! Tente novamente informando um e-mail válido e uma senha com pelo menos 1 caractere");
      return;
    }

    Navigator.pop(context);
  }

  bool criarConta({required Credenciais usuario}) {
    bool contaPodeSerCriada = validarCriacaoDeConta(usuario);

    if (!contaPodeSerCriada) {
      return false;
    }

    UsuariosRepository().salvarUsuario(usuario);

    return true;
  }

  bool validarCriacaoDeConta(Credenciais usuario) {
    String email = usuario.email;
    String senha = usuario.senha;

    if (email.isEmpty || senha.isEmpty) {
      return false;
    }

    if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(email)) {
      return false;
    }

    return true;
  }
}
