import 'package:app_gerente/Components/main_drawer.dart';
import 'package:app_gerente/Models/gestor.dart';
import 'package:app_gerente/Telas/tela_crud_funcionarios.dart';
import 'package:app_gerente/Telas/tela_crud_cliente.dart';
import 'package:app_gerente/Utilitarios/app_routes.dart';
import 'package:flutter/material.dart';

import 'Components/lista_servicos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App Gerente",
      theme: ThemeData(
        primaryColor: Colors.cyan.shade900,
        primarySwatch: Colors.cyan,
        accentColor: Colors.cyan[700],
      ),
      home: GerenteApp(),
      routes: {
        AppRoutes.CRUDCLIENTES: (ctx) => TelaCrudCliente(),
        AppRoutes.CRUDFUNCIONARIOS: (ctx) => TelaCrudFuncionarios(),
      },
    );
  }
}

class GerenteApp extends StatelessWidget {
  final Gestor gestor = Gestor(
    nome: 'Madreyv Gomes',
    email: 'madreyv@fgbinformatica.com.br',
    avatarURL:
        'https://i.pinimg.com/originals/41/9d/0e/419d0ec59d1b4bec84aaca3542757ba0.jpg',
    empresa: 'FGB - Serviços de Informatica',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Gerente'),
      ),
      drawer: MainDrawer(this.gestor),
      body: Center(
        child: ListaServicos(),
      ),
    );
  }
}
