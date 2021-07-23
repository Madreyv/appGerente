import 'package:flutter/material.dart';

class TelaCrudCliente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Clientes"),
      ),
      body: Center(
        child: Text("Tela Crud Cliente"),
      ),
    );
  }
}
