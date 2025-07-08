import 'dart:io';
import 'dart:math';

void main() {
  print("Seleccione una figura:");
  print("1. Triángulo");
  print("2. Rectángulo");
  print("3. Círculo");

  stdout.write("Ingrese el número de la figura (1-3): ");
  int opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  double pedirNumeroPositivo(String mensaje) {
    double num;
    do {
      stdout.write(mensaje);
      num = double.tryParse(stdin.readLineSync() ?? "") ?? -1;
      if (num <= 0) {
        print("El valor debe ser mayor que cero. Intente de nuevo.");
      }
    } while (num <= 0);
    return num;
  }

  switch (opcion) {
    case 1: // Triángulo
      print("Ingrese las medidas del triángulo:");
      double base = pedirNumeroPositivo("Base: ");
      double altura = pedirNumeroPositivo("Altura: ");
      double lado1 = pedirNumeroPositivo("Lado 1: ");
      double lado2 = pedirNumeroPositivo("Lado 2: ");

      double area = (base * altura) / 2;
      double perimetro = base + lado1 + lado2;

      print("\nFigura: Triángulo");
      print("Área: ${area.toStringAsFixed(2)} unidades cuadradas");
      print("Perímetro: ${perimetro.toStringAsFixed(2)} unidades");
      break;

    case 2: // Rectángulo
      print("Ingrese las medidas del rectángulo:");
      double largo = pedirNumeroPositivo("Largo: ");
      double ancho = pedirNumeroPositivo("Ancho: ");

      double area = largo * ancho;
      double perimetro = 2 * (largo + ancho);

      print("\nFigura: Rectángulo");
      print("Área: ${area.toStringAsFixed(2)} unidades cuadradas");
      print("Perímetro: ${perimetro.toStringAsFixed(2)} unidades");
      break;

    case 3: // Círculo
      double radio = pedirNumeroPositivo("Ingrese el radio del círculo: ");

      double area = pi * radio * radio;
      double perimetro = 2 * pi * radio;

      print("\nFigura: Círculo");
      print("Área: ${area.toStringAsFixed(2)} unidades cuadradas");
      print("Perímetro: ${perimetro.toStringAsFixed(2)} unidades");
      break;

    default:
      print("Opción no válida.");
  }
}
