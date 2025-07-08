import 'dart:io';

void main() {
  stdout.write("Ingrese un número entre 0 y 12: ");
  int n = int.tryParse(stdin.readLineSync() ?? "") ?? -1;

  if (n < 0) {
    print("Número inválido.");
    return;
  }

  if (n > 12) {
    print("El factorial es infinito.");
    return;
  }

  int factorial = 1;
  for (int i = 1; i <= n; i++) {
    factorial *= i;
  }

  print("El factorial de $n es: $factorial");
}
