import 'dart:io';

void main() {
  List<String> campos = ["nombre", "apellido", "edad", "estado", "teléfono"];
  List<List<String>> matriz = List.generate(4, (_) => List.filled(5, ""));

  for (int i = 0; i < 4; i++) {
    print("Ingrese datos para el compañero ${i + 1}:");
    for (int j = 0; j < 5; j++) {
      stdout.write("${campos[j]}: ");
      matriz[i][j] = stdin.readLineSync() ?? "";
    }
  }

  print("\nDatos de compañeros:");
  print(campos.join("\t"));
  for (var fila in matriz) {
    print(fila.join("\t"));
  }
}
