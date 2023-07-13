import 'package:desafifa_do_moa/mvp/model/credenciais.dart';

class UsuariosRepository {
  static List<Credenciais> listaDeUsuarios = [];

  void salvarUsuario(Credenciais usuario) {
    listaDeUsuarios.add(usuario);
  }
}
