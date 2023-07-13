import 'dart:convert';

class Credenciais {
  final String email;
  final String senha;

  Credenciais({
    required this.email,
    required this.senha,
  });

  factory Credenciais.fromRawJson(String str) =>
      Credenciais.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Credenciais.fromJson(Map<String, dynamic> json) => Credenciais(
        email: json["email"],
        senha: json["senha"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "senha": senha,
      };
}

// TODO: by quicktype.io
