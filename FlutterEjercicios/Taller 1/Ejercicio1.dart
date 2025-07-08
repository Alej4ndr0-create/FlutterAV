  void main() {
  String nombre = "Alejandro Valbuena";
  String sexo = "Masculino";
  int edad = 18;
  double salario = 711000.00;
  bool tieneVehiculo = false;

  print("Nombre: $nombre");
  print("Sexo: $sexo");
  print("Edad: $edad años");
  print("Salario: \$${salario.toStringAsFixed(2)}");
  print("¿Tiene vehículo de transporte? ${tieneVehiculo ? "Sí" : "No"}");
}