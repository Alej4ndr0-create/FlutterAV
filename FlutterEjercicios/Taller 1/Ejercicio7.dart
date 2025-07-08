import 'dart:io';

void main() {
  print("Menú de colores:");
  print("1 = Amarillo");
  print("2 = Azul");
  print("3 = Rojo");

  stdout.write("Ingrese el primer número (1-3): ");
  int num1 = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  stdout.write("Ingrese el segundo número (1-3): ");
  int num2 = int.tryParse(stdin.readLineSync() ?? "") ?? 0;


  String color(int num) {
    switch (num) {
      case 1:
        return "amarillo";
      case 2:
        return "azul";
      case 3:
        return "rojo";
      default:
        return "";
    }
  }

  if (num1 < 1 || num1 > 3 || num2 < 1 || num2 > 3) {
    print("Alguno de los números está fuera del rango 1 a 3.");
    return;
  }


  if ((num1 == 1 && num2 == 2) || (num1 == 2 && num2 == 1)) {
    print("Su combinación es verde.");
  } else if ((num1 == 1 && num2 == 3) || (num1 == 3 && num2 == 1)) {
    print("Su combinación es naranja.");
  } else if ((num1 == 2 && num2 == 3) || (num1 == 3 && num2 == 2)) {
    print("Su combinación es morado.");
  } else if (num1 == num2) {
    print("Su combinación es ${color(num1)}.");
  } else {
    print("Combinación no definida.");
  }
}
