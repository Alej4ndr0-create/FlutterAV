import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SENA | CEET",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("DATOS | PERSONALES "),
        ),
        body: Column(
          children: [
            Text("Aprendiz"),
            Text("Alejandro Valbuena"),
            Icon(Icons.king_bed),
            Icon(Icons.power_off),
            ElevatedButton(onPressed: () {}, child: Text("Crear")),
            ElevatedButton(onPressed: () {}, child: Text("Editar")),
            ElevatedButton(onPressed: () {}, child: Text("Enviar")),
          ],
        ),
      ),
    );
  }
}