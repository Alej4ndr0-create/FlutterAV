import 'dart:io';

void main() {
  stdout.write("Ingrese un número del 0 al 12: ");
  int n = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  if (n > 12) {
    print("El factorial es infinito.");
    return;
  }

  List<int> factores = List.generate(n, (i) => i + 1);
  int resultado = factores.fold(1, (a, b) => a * b);

  print("Factorial de $n es: $resultado");
}
