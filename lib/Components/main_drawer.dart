import 'package:app_gerente/Models/gestor.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  final Gestor gestor;

  MainDrawer(this.gestor);

  Widget _createItem(IconData icon, String label, Function onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 18,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 80,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            alignment: Alignment.bottomCenter,
            color: Theme.of(context).accentColor,
            child: Text(
              this.gestor.empresa,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              backgroundImage: NetworkImage(this.gestor.avatarURL),
              radius: 80,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              this.gestor.nome,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Técnico em Informática",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              this.gestor.email,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _createItem(Icons.account_circle_rounded, "FUNCIONARIOS", null),
          _createItem(Icons.storage_sharp, "CLIENTES", null)
        ],
      ),
    );
  }
}
