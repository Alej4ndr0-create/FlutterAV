import 'dart:io';

void main() {
  stdout.write("¿Cuántos números desea ingresar? ");
  int n = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  if (n <= 0) {
    print("Número inválido.");
    return;
  }

  List<int> vector = List.filled(n, 0);

  for (int i = 0; i < n; i++) {
    stdout.write("Ingrese el número ${i + 1}: ");
    vector[i] = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  }

  print("¿Cómo desea ordenar? (1) Ascendente, (2) Descendente");
  int opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  if (opcion == 1) {
    vector.sort();
  } else if (opcion == 2) {
    vector.sort((a, b) => b.compareTo(a));
  } else {
    print("Opción inválida.");
    return;
  }

  print("Vector ordenado:");
  print(vector);
}
