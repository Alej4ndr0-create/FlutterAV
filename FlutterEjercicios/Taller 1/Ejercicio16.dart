import 'dart:io';

void main() {
  stdout.write("¿Cuántos números de la serie Fibonacci deseas ver? ");
  int n = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  if (n <= 0) {
    print("Por favor ingresa un número mayor que cero.");
    return;
  }

  List<int> fibonacci = [];

  for (int i = 0; i < n; i++) {
    if (i == 0 || i == 1) {
      fibonacci.add(1);
    } else {
      fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
    }
  }

  print("Serie Fibonacci ($n números):");
  print(fibonacci.join(", "));
}
