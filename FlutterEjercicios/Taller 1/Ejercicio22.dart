void main() {
  List<int> vector = List.filled(10, 0);

  for (int i = 0; i < vector.length; i++) {
    vector[i] = i * 2; //llenar con múltiplos de 2
  }

  for (int i = 0; i < vector.length; i++) {
    print("Índice: $i, Posición: ${i + 1}, Valor: ${vector[i]}");
  }
}
