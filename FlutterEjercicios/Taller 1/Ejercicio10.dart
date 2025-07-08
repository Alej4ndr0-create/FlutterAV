import 'dart:io';
import 'dart:math';

void main() {
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

  print("Cálculo para un cilindro con tapa:");

  double radio = pedirNumeroPositivo("Ingrese el radio (unidades): ");
  double altura = pedirNumeroPositivo("Ingrese la altura (unidades): ");

  double areaBase = pi * pow(radio, 2);


  double areaLateral = 2 * pi * radio * altura;

  
  double areaTotal = areaLateral + 2 * areaBase;


  double perimetro = 2 * pi * radio;

 
  double volumen = areaBase * altura;

  print("\nResultados:");
  print("Área total (material necesario): ${areaTotal.toStringAsFixed(2)} unidades cuadradas");
  print("Perímetro (circunferencia base): ${perimetro.toStringAsFixed(2)} unidades");
  print("Volumen ocupado: ${volumen.toStringAsFixed(2)} unidades cúbicas");
}
