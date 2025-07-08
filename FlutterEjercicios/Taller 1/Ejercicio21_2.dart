import 'dart:io';

void main() {
  stdout.write("Ingrese el primer número: ");
  int n1 = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  stdout.write("Ingrese el segundo número: ");
  int n2 = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  int menor = n1 < n2 ? n1 : n2;
  int mayor = n1 > n2 ? n1 : n2;

  stdout.write("¿Qué serie desea? (1) Par, (2) Impar: ");
  int opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  List<int> serie = [];

  for (int i = menor; i <= mayor; i++) {
    if (opcion == 1 && i % 2 == 0) {
      serie.add(i);
    } else if (opcion == 2 && i % 2 != 0) {
      serie.add(i);
    }
  }

  print("Serie seleccionada:");
  print(serie.join(", "));
}
