import 'package:app_gerente/Components/servico_item.dart';
import 'package:app_gerente/Models/dummy_data.dart';
import 'package:app_gerente/Models/servicos.dart';
import 'package:flutter/material.dart';

class ListaServicos extends StatelessWidget {
  final List<Servicos> servicos = DUMMY_SERVICOS;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: servicos.length,
      itemBuilder: (ctx, index) {
        return Card(
          elevation: 7,
          child: ServicoItem(this.servicos[index]),
        );
      },
    );
  }
}
