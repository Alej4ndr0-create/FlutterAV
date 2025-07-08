import 'dart:io';
import 'dart:math';

void main() {
  var rnd = Random();

  stdout.write("Ingrese la cantidad de usuarios: ");
  int usuarios = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  int acumulado = 0;

  while (acumulado > 0 || acumulado == 0) {
    for (int i = 1; i <= usuarios; i++) {
      print("\nTurno del jugador $i. Acumulado: $acumulado");

      int tiro1 = rnd.nextInt(6) + 1;
      print("Primer tiro: $tiro1");

      if (tiro1 == 1 || tiro1 == 6) {
        acumulado += 1; 
        print("Pierde y pone una moneda al acumulado.");
        continue;
      }

      int apuesta = acumulado; //máximo acumulado para apostar
      print("Apuesta: $apuesta");

      int tiro2 = rnd.nextInt(6) + 1;
      print("Segundo tiro: $tiro2");

      if (tiro2 > tiro1) {
        print("Gana el total apostado!");
        acumulado -= apuesta;
        if (acumulado < 0) acumulado = 0;
      } else {
        acumulado += apuesta;
        print("Pierde y aumenta el acumulado.");
      }

      if (acumulado == 0) break;
    }
    if (acumulado == 0) {
      print("\nEl acumulado es cero, el juego termina.");
      break;
    }
  }
}
