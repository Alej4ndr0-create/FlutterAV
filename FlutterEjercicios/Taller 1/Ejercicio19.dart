import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Presione Enter para generar 6 números aleatorios del 1 al 45: ");
  stdin.readLineSync();

  var rnd = Random();
  Set<int> numeros = {};

  while (numeros.length < 6) {
    numeros.add(rnd.nextInt(45) + 1);
  }

  List<int> listaNumeros = numeros.toList();
  listaNumeros.sort();

  print("Números generados (Baloto): ${listaNumeros.join(', ')}");
}
