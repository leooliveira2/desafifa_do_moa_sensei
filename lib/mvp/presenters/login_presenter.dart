import 'package:desafifa_do_moa/provider/auth.dart';
import 'package:desafifa_do_moa/mvp/model/credenciais.dart';
import 'package:desafifa_do_moa/mvp/repositories/usuarios_repository.dart';
import 'package:desafifa_do_moa/mvp/views/i_login_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPresenter {
  final ILoginView view;
  final BuildContext context;

  LoginPresenter({required this.view, required this.context});

  void entrarOnClick(String? email, String? senha) {
    realizarLogin(email, senha);
  }

  void realizarLogin(String? email, String? senha) {
    if (email == null || senha == null) {
      view.exibirAlerta("Erro", "Não foi possível realizar seu login!");
      return;
    }

    if (userExists(email, senha)) {
      view.exibirAlerta("Erro", "Não foi possível realizar seu login!");
      return;
    }

    // chama a api
    //String json = Credenciais(email: email, senha:senha).toRawJson();

    context.read<Auth>().loggedIn();
  }

  bool userExists(String email, String senha) {
    List<Credenciais> usuarios = UsuariosRepository.listaDeUsuarios;

    for (Credenciais usuarioCadastrado in usuarios) {
      if (usuarioCadastrado.email == email &&
          usuarioCadastrado.senha == senha) {
        return true;
      }
    }

    return false;
  }
}
