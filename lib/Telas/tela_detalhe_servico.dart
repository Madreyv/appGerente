import 'package:flutter/material.dart';
import 'package:app_gerente/Models/servicos.dart';

class TelaDetalheServico extends StatelessWidget {
  final Servicos servico;
  TelaDetalheServico(this.servico);

  Widget _createItem(String titulo, String texto, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).accentColor,
              width: 2,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Theme.of(context).accentColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
              alignment: Alignment.center,
              child: Text(
                titulo,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        title: Text(texto),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            'OS ${this.servico.id}:  ${this.servico.cliente.split(' ').first.toUpperCase()}'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
              elevation: 7,
              child: _createItem(
                this.servico.status,
                this.servico.problemaRelatado,
                context,
              ),
            ),
            Card(
              elevation: 5,
              child: Column(
                children: [
                  _createItem(
                    "Parecer",
                    this.servico.parecerTecnico,
                    context,
                  ),
                  _createItem(
                    "Solução",
                    this.servico.solucao,
                    context,
                  ),
                  _createItem(
                    "Melhoria",
                    (this.servico.sugestaoDeMelhoria != null
                        ? this.servico.sugestaoDeMelhoria
                        : " Sem sugestões "),
                    context,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
