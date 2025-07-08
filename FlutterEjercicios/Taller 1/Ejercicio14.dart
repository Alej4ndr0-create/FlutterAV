import 'dart:io';

void main() {
  stdout.write("Ingrese un número para mostrar su tabla de multiplicar: ");
  int numero = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  if (numero <= 0) {
    print("Por favor ingrese un número mayor que cero.");
    return;
  }

  print("Tabla de multiplicar del $numero:");
  for (int i = 1; i <= 10; i++) {
    print("$numero x $i = ${numero * i}");
  }
}
