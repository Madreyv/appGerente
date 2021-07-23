import 'package:app_gerente/Models/servicos.dart';
import 'package:app_gerente/Telas/tela_detalhe_servico.dart';
import 'package:flutter/material.dart';

class ServicoItem extends StatelessWidget {
  final Servicos servico;
  
  ServicoItem(this.servico);

  void _itemSelecionado(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return TelaDetalheServico(this.servico);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _itemSelecionado(context),
      splashColor: Theme.of(context).primaryColor,
      child: ListTile(
        leading: CircleAvatar(
          radius: 40,
          child: Padding(
            padding: EdgeInsets.all(6),
            child: FittedBox(
              child: Container(
                  margin: EdgeInsets.all(15),
                  child: Text(this.servico.cliente.split(" ")[0])),
            ),
          ),
        ),
        title: Text(this.servico.problemaRelatado),
        subtitle: Text(
            (this.servico.status == null && this.servico.inicio == null)
                ? 'Iniciado'
                : this.servico.status),
      ),
    );
  }
}
