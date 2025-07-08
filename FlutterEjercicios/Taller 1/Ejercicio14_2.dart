import 'dart:io';

void main() {
  stdout.write("Ingrese un número: ");
  int numero = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  List<String> tabla = [];

  for (int i = 1; i <= 10; i++) {
    tabla.add("$numero x $i = ${numero * i}");
  }

  print("Tabla de multiplicar:");
  tabla.forEach(print);
}
