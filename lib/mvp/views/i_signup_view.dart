import 'package:desafifa_do_moa/my_widgets/custom_text_field.dart';

abstract interface class ISignUpView {
  late CustomTextField textFieldEmail;
  late CustomTextField textFieldSenha;
  
  void exibirAlerta(String titulo, String mensagem);
}