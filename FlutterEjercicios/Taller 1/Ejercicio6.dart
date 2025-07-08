import 'dart:io';

void main() {
  stdout.write("Ingrese el número A: ");
  double numeroA = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

  stdout.write("Ingrese el número B: ");
  double numeroB = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

  if (numeroB == 0) {
    print("Imposible la división por 0.");
  } else {
    double resultado = numeroA / numeroB;
    print("La división del número A entre el número B es: $resultado");
  }
}
