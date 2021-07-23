import 'package:flutter/material.dart';

class Cliente {
  final String nome;
  final String cnpj;
  final String imagemURL;
  final String apelido;

  Cliente({
    @required this.cnpj,
    @required this.nome,
    @required this.apelido,
    this.imagemURL,
  });
}
