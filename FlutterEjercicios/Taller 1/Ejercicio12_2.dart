import 'dart:math';

void main() {
  var rnd = Random();
  int paresConsecutivos = 0;
  List<List<int>> lanzamientos = [];

  for (int intento = 1; intento <= 3; intento++) {
    int dado1 = rnd.nextInt(6) + 1;
    int dado2 = rnd.nextInt(6) + 1;

    lanzamientos.add([dado1, dado2]);

    print("Lanzamiento $intento: dado1 = $dado1, dado2 = $dado2");

    if (dado1 == dado2) {
      paresConsecutivos++;
      if (paresConsecutivos == 1) {
        print("Lanzar de nuevo");
      } else if (paresConsecutivos == 3) {
        print("¡Saca una ficha!");
        break;
      }
    } else {
      print("¡Lanza de nuevo!");
      paresConsecutivos = 0;
    }
  }

  print("\nResumen de lanzamientos:");
  for (int i = 0; i < lanzamientos.length; i++) {
    print("Intento ${i + 1}: ${lanzamientos[i]}");
  }
}
