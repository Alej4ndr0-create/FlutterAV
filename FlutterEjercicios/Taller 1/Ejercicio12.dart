import 'dart:math';

void main() {
  var rnd = Random();
  int paresConsecutivos = 0;

  for (int intento = 1; intento <= 3; intento++) {
    int dado1 = rnd.nextInt(6) + 1;
    int dado2 = rnd.nextInt(6) + 1;

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
}
