import 'dart:io';

void main() {
  stdout.write("Ingrese el número A: ");
  double numeroA = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

  stdout.write("Ingrese el número B: ");
  double numeroB = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

  double resultado = numeroA * numeroB;

  print("El producto del número A con el número B es: $resultado");
}
