import 'dart:io';

void main() {
  stdout.write("Ingrese el primer número: ");
  double num1 = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

  stdout.write("Ingrese el segundo número: ");
  double num2 = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

  stdout.write("Ingrese el tercer número: ");
  double num3 = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

  print("¿Cómo desea ordenar los números?");
  print("1. Ascendente");
  print("2. Descendente");
  stdout.write("Ingrese opción (1 o 2): ");
  int opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  List<double> numeros = [num1, num2, num3];

  if (opcion == 1) {
    numeros.sort();
    print("Números ordenados de forma ascendente:");
  } else if (opcion == 2) {
    numeros.sort((a, b) => b.compareTo(a));
    print("Números ordenados de forma descendente:");
  } else {
    print("Opción inválida.");
    return;
  }

  print(numeros);
}
  