import 'dart:io';
import 'dart:math';

void main() {
  print("Seleccione una operación matemática:");
  print("1. Suma");
  print("2. Resta");
  print("3. Multiplicación");
  print("4. División");
  print("5. Módulo");
  print("6. Cuadrado");
  print("7. Raíz cuadrada");
  print("8. Potencia");
  print("9. Porcentaje");
  print("10. Número aleatorio");

  stdout.write("Ingrese el número de la operación (1-10): ");
  int opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  double pedirNumero(String mensaje) {
    stdout.write(mensaje);
    return double.tryParse(stdin.readLineSync() ?? "") ?? 0;
  }

  switch (opcion) {
    case 1: // Suma
      double a = pedirNumero("Ingrese el primer número: ");
      double b = pedirNumero("Ingrese el segundo número: ");
      print("Resultado: ${a + b}");
      break;

    case 2: // Resta
      double a = pedirNumero("Ingrese el primer número: ");
      double b = pedirNumero("Ingrese el segundo número: ");
      print("Resultado: ${a - b}");
      break;

    case 3: // Multiplicación
      double a = pedirNumero("Ingrese el primer número: ");
      double b = pedirNumero("Ingrese el segundo número: ");
      print("Resultado: ${a * b}");
      break;

    case 4: // División
      double a = pedirNumero("Ingrese el numerador: ");
      double b = pedirNumero("Ingrese el denominador: ");
      if (b == 0) {
        print("Imposible la división por 0.");
      } else {
        print("Resultado: ${a / b}");
      }
      break;

    case 5: // Módulo
      int a = pedirNumero("Ingrese el primer número (entero): ").toInt();
      int b = pedirNumero("Ingrese el segundo número (entero): ").toInt();
      if (b == 0) {
        print("Imposible el módulo por 0.");
      } else {
        print("Resultado: ${a % b}");
      }
      break;

    case 6: // Cuadrado
      double a = pedirNumero("Ingrese el número: ");
      print("Resultado: ${a * a}");
      break;

    case 7: // Raíz cuadrada
      double a = pedirNumero("Ingrese el número: ");
      if (a < 0) {
        print("No se puede calcular la raíz cuadrada de un número negativo.");
      } else {
        print("Resultado: ${sqrt(a)}");
      }
      break;

    case 8: // Potencia
      double base = pedirNumero("Ingrese la base: ");
      double exponente = pedirNumero("Ingrese el exponente: ");
      print("Resultado: ${pow(base, exponente)}");
      break;

    case 9: // Porcentaje
      double total = pedirNumero("Ingrese el total: ");
      double porcentaje = pedirNumero("Ingrese el porcentaje: ");
      print("Resultado: ${(total * porcentaje) / 100}");
      break;

    case 10: // Número aleatorio
      int max = pedirNumero("Ingrese el valor máximo (entero) para el número aleatorio: ").toInt();
      if (max <= 0) {
        print("Debe ingresar un número mayor que 0.");
      } else {
        var rnd = Random();
        int aleatorio = rnd.nextInt(max) + 1; 
        print("Número aleatorio generado: $aleatorio");
      }
      break;

    default:
      print("Opción no válida.");
  }
}
