  import 'dart:io';

void main() {
  stdout.write("Ingrese su nombre: ");
  String nombre = stdin.readLineSync() ?? "";

  stdout.write("Ingrese su sexo (Masculino/Femenino): ");
  String sexo = stdin.readLineSync() ?? "";

  stdout.write("Ingrese su edad: ");
  int edad = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  stdout.write("Ingrese su salario (incluyendo centavos): ");
  double salario = double.tryParse(stdin.readLineSync() ?? "") ?? 0.0;

  stdout.write("¿Tiene vehículo de transporte? (sí/no): ");
  String vehiculoRespuesta = stdin.readLineSync() ?? "";
  bool tieneVehiculo = vehiculoRespuesta.toLowerCase() == 'sí' || vehiculoRespuesta.toLowerCase() == 'si';

  print("\nDatos ingresados:");
  print("Nombre: $nombre");
  print("Sexo: $sexo");
  print("Edad: $edad años");
  print("Salario: \$${salario.toStringAsFixed(2)}");
  print("¿Tiene vehículo de transporte? ${tieneVehiculo ? "Sí" : "No"}");
}
