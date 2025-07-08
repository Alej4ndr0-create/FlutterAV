import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SENA | DISTRITO CAPITAL | CEET",
      home: Column(
        children: [
          Text("Aprendiz"),
          Text("AlejandroValbuena"),
          Icon(Icons.ice_skating_outlined),
          Icon(Icons.icecream),
          ElevatedButton(onPressed: () {}, child: Text("Crear")),
          ElevatedButton(onPressed: () {}, child: Text("Editar")),
          ElevatedButton(onPressed: () {}, child: Text("Enviar")),
        ],
      ),
    );
  }
}