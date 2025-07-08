import 'dart:io';

void main() {
  List<String> datos = [];

  stdout.write("Ingrese el nombre del artículo: ");
  datos.add(stdin.readLineSync() ?? "");

  stdout.write("Ingrese el valor unitario: ");
  double valorUnitario = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

  stdout.write("Ingrese la cantidad a llevar: ");
  int cantidad = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  stdout.write("¿Es de la canasta familiar? (sí/no): ");
  datos.add((stdin.readLineSync() ?? "").toLowerCase());

  double total = valorUnitario * cantidad;

  if (!["sí", "si"].contains(datos[1])) { 
    total += total * 0.19;
  }

  print("\nArtículo: ${datos[0]}");
  print("Cantidad: $cantidad");
  print("Total a pagar: \$${total.toStringAsFixed(2)}");
}
