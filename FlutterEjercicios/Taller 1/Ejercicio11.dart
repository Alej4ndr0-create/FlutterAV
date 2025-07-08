import 'dart:io';
import 'dart:math';

void main() {
  print("Seleccione cómo quiere ingresar los datos para el triángulo:");
  print("1. Ángulos");
  print("2. Lados");

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

  if (opcion == 1) {

    print("Ingrese los 3 ángulos del triángulo:");

    double a1 = pedirNumeroPositivo("Ángulo 1 (grados): ");
    double a2 = pedirNumeroPositivo("Ángulo 2 (grados): ");
    double a3 = pedirNumeroPositivo("Ángulo 3 (grados): ");

    double sumaAngulos = a1 + a2 + a3;

    if ((sumaAngulos - 180).abs() > 0.01) {
      print("La suma de los ángulos debe ser 180°. Ingrese datos correctos.");
      return;
    }

    String tipoAngulo;
    if (a1 == 90 || a2 == 90 || a3 == 90) {
      tipoAngulo = "Rectángulo";
    } else if (a1 < 90 && a2 < 90 && a3 < 90) {
      tipoAngulo = "Acutángulo";
    } else {
      tipoAngulo = "Obtusángulo";
    }

    print("El triángulo es: $tipoAngulo");

  } else if (opcion == 2) {
   
    print("Ingrese las longitudes de los 3 lados:");

    double l1 = pedirNumeroPositivo("Lado 1: ");
    double l2 = pedirNumeroPositivo("Lado 2: ");
    double l3 = pedirNumeroPositivo("Lado 3: ");

   
    List<double> lados = [l1, l2, l3];
    lados.sort();

    if (lados[0] + lados[1] <= lados[2]) {
      print("No es un triángulo válido, la suma de los dos lados más cortos debe ser mayor que el lado más largo.");
      return;
    }

   
    String tipoLado;
    if (l1 == l2 && l2 == l3) {
      tipoLado = "Equilátero";
    } else if (l1 == l2 || l2 == l3 || l1 == l3) {
      tipoLado = "Isósceles";
    } else {
      tipoLado = "Escaleno";
    }

    
    double a = lados[0];
    double b = lados[1];
    double c = lados[2];


    double cosGamma = (pow(a, 2) + pow(b, 2) - pow(c, 2)) / (2 * a * b);

  
    cosGamma = cosGamma.clamp(-1.0, 1.0);

    double gamma = acos(cosGamma) * 180 / pi;

    String tipoAngulo;
    if ((gamma - 90).abs() < 0.01) {
      tipoAngulo = "Rectángulo";
    } else if (gamma < 90) {
      tipoAngulo = "Acutángulo";
    } else {
      tipoAngulo = "Obtusángulo";
    }

    print("El triángulo es: $tipoLado y $tipoAngulo");

  } else {
    print("Opción no válida.");
  }
}
