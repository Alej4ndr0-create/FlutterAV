import 'dart:io';

void main() {
  stdout.write("Ingrese un número: ");
  String? input = stdin.readLineSync();
  if (input == null || input.isEmpty) {
    print("No ingresó un número válido.");
    return;
  }
  
  // Descomponer número en dígitos y contar
  List<String> digitos = input.split('');
  print("El número $input tiene ${digitos.length} dígitos.");
}
