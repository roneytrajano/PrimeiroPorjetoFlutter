import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController valor;
  final String titulo;
  final String dica;
  final IconData? icone;

  Editor({
    required this.valor,
    required this.titulo,
    required this.dica,
    this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        controller: valor,
        style: TextStyle(
          fontSize: 24.0,
        ),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          icon: icone == null
              ? null
              : Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: Icon(icone),
                ),
          labelText: titulo,
          hintText: dica,
        ),
      ),
    );
  }
}
