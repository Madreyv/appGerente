import 'package:flutter/material.dart';

class Gestor {
  final String nome;
  final String email;
  final String empresa;
  final String avatarURL;

  Gestor({
    @required this.nome,
    @required this.email,
    @required this.avatarURL,
    @required this.empresa,
  });
}
