void main() {
  List<List<String>> tablas = [];

  for (int num = 1; num <= 10; num++) {
    List<String> tabla = [];
    for (int i = 1; i <= 10; i++) {
      tabla.add("$num x $i = ${num * i}");
    }
    tablas.add(tabla);
  }

  for (int i = 0; i < tablas.length; i++) {
    print("Tabla del ${i + 1}:");
    tablas[i].forEach(print);
    print("");
  }
}
