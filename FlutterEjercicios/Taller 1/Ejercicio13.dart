import 'dart:io';

void main() {
  stdout.write("Ingrese el nombre del artículo: ");
  String nombre = stdin.readLineSync() ?? "";

  stdout.write("Ingrese el valor unitario: ");
  double valorUnitario = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

  stdout.write("Ingrese la cantidad a llevar: ");
  int cantidad = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  stdout.write("¿Es de la canasta familiar? (sí/no): ");
  String canasta = (stdin.readLineSync() ?? "").toLowerCase();

  double total = valorUnitario * cantidad;

  if (canasta != "sí" && canasta != "si") {
    total += total * 0.19; //IVA 19%
  }

  print("\nArtículo: $nombre");
  print("Cantidad: $cantidad");
  print("Total a pagar: \$${total.toStringAsFixed(2)}");
}
