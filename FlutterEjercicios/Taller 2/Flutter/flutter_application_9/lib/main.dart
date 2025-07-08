import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FICHA | 2925960", 
      home: HomePrincipal(),
    );
  }
}

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  // Defino aquí la lista 'aprendices' con algunos datos de ejemplo
  final List<Map<String, dynamic>> aprendices = [
  {
    "nombre": "AMAYA MARTINEZ FABIAN YESID",
    "telefono": "573195638261",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=1",
    "color_distintivo": Colors.blue,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "BELTRAN BUSTOS JULIAN DANIEL",
    "telefono": "3226607792",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=2",
    "color_distintivo": Colors.pink,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "BORDA ARDILA RONNY",
    "telefono": "3219759220",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=3",
    "color_distintivo": Colors.blue,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "CADENA QUINTERO ALAN JAIR",
    "telefono": "5714886956",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=4",
    "color_distintivo": Colors.pink,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "CAMACHO FERRUCHO CARLOS EDUARDO",
    "telefono": "3143808047",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=5",
    "color_distintivo": Colors.blue,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "CASTAÑEDA LEIVA BRAYAN DAVID",
    "telefono": "3013237460",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=6",
    "color_distintivo": Colors.pink,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "CORDOBA MALDONADO NICOL DAYANA",
    "telefono": "573053677841",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=7",
    "color_distintivo": Colors.blue,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "CRUZ FIGUEROA OSCAR MAURICIO",
    "telefono": "3227813912",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=8",
    "color_distintivo": Colors.pink,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "CUIDA ESQUIVEL SAMUEL",
    "telefono": "3054302025",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=9",
    "color_distintivo": Colors.blue,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "DAZA CAMACHO JOSE DAVID",
    "telefono": "3143688476",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=10",
    "color_distintivo": Colors.pink,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "ESPITIA ARENAS MAICOL STIVEN",
    "telefono": "3123767034",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=11",
    "color_distintivo": Colors.blue,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "FERNANDEZ VALLEJO SHARON TATIANA",
    "telefono": "3227658431",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=12",
    "color_distintivo": Colors.pink,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "HERRERA MATEUS BRAYAN STIVEN",
    "telefono": "3132860500",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=13",
    "color_distintivo": Colors.blue,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "LONDOÑO CARVAJAL JUAN ESTEBAN",
    "telefono": "3505112026",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=14",
    "color_distintivo": Colors.pink,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "LOZANO PANESSO EDWARD CAMILO",
    "telefono": "3041381520",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=15",
    "color_distintivo": Colors.blue,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "MADRIGAL TIQUE JOHAN SNEIDER",
    "telefono": "3001597024",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=16",
    "color_distintivo": Colors.pink,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "MELO CANO CRISTIAN CAMILO",
    "telefono": "3112850538",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=17",
    "color_distintivo": Colors.blue,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "MENESES PARRA DAVID LEONARDO",
    "telefono": "3138292531",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=18",
    "color_distintivo": Colors.pink,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "MIRANDA MORENO JOHAN DANIEL",
    "telefono": "3202564149",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=19",
    "color_distintivo": Colors.blue,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "MONTEALEGRE SANCHEZ KEVIN SANTIAGO",
    "telefono": "3209188193",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=20",
    "color_distintivo": Colors.pink,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "MONZON AMORTEGUI CRISTIAN DAVID",
    "telefono": "3107883038",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=21",
    "color_distintivo": Colors.blue,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "MORALEZ PACHON DAVID SANTIAGO",
    "telefono": "3116658577",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=22",
    "color_distintivo": Colors.pink,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "PACHECO RUEDA KEVIN LEONARDO",
    "telefono": "3156406251",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=23",
    "color_distintivo": Colors.blue,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "PINZON HERNANDEZ VALENTINA",
    "telefono": "3115918301",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=24",
    "color_distintivo": Colors.pink,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "TORRES TORRES MIGUEL ANGEL",
    "telefono": "3135562730",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=25",
    "color_distintivo": Colors.blue,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "TUNJANO CORREA MIGUEL ANGEL",
    "telefono": "3125918289",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=26",
    "color_distintivo": Colors.pink,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "VALBUENA MANCERA DIEGO ALEJANDRO",
    "telefono": "3016875644",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=27",
    "color_distintivo": Colors.blue,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "VASQUEZ PRADA JOHN MICHAEL",
    "telefono": "3123503334",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=28",
    "color_distintivo": Colors.pink,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "VILLAZON MONTERO MARIA ALEJANDRA",
    "telefono": "3172897823",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=29",
    "color_distintivo": Colors.blue,
    "fecha_inscripcion": "",
  },
  {
    "nombre": "ZABALETA CALDERON JOSE DAVID",
    "telefono": "3235995105",
    "ubicacion": "",
    "foto": "https://i.pravatar.cc/150?img=30",
    "color_distintivo": Colors.pink,
    "fecha_inscripcion": "",
  },
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text("FICHA | 2925960"), 
      ),
      body: ListView.builder(
        itemCount: aprendices.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            trailing: Icon(Icons.arrow_circle_right_outlined),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(aprendices[index]["foto"]),
            ),
            title: Text(aprendices[index]["nombre"]),
            subtitle: Text(
              "${aprendices[index]["telefono"]} - ${aprendices[index]["ubicacion"]}",
            ),
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Column(
                      children: [
                        AppBar(
                          backgroundColor: aprendices[index]["color_distintivo"],
                          title: Text(aprendices[index]["nombre"]),
                          automaticallyImplyLeading: false,
                        ),
                        SizedBox(height: 10),
                        CircleAvatar(
                          radius: 80,
                          backgroundImage: NetworkImage(aprendices[index]["foto"]),
                        ),
                        SizedBox(height: 20),
                        Text("Teléfono: ${aprendices[index]["telefono"]}", style: TextStyle(fontSize: 16)),
                        Divider(),
                        Text("Ubicación: ${aprendices[index]["ubicacion"]}", style: TextStyle(fontSize: 16)),
                        Divider(),
                        Text("Fecha de inscripción: ${aprendices[index]["fecha_inscripcion"]}", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
