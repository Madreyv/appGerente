import 'package:flutter/foundation.dart';

class Servicos {
  final String id;
  final String problemaRelatado;
  final String parecerTecnico;
  final String solucao;
  final String sugestaoDeMelhoria;
  final DateTime inicio;
  final DateTime fim;
  final String cliente;
  final String status;

  Servicos(
      {
      @required this.id,
      this.inicio,
      @required this.problemaRelatado,
      this.parecerTecnico,
      this.solucao,
      this.sugestaoDeMelhoria,
      this.fim,
      @required this.cliente,
      this.status,
      });
}
