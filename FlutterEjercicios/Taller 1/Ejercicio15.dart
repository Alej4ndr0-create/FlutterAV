void main() {
  for (int num = 1; num <= 10; num++) {
    print("Tabla de multiplicar del $num:");
    for (int i = 1; i <= 10; i++) {
      print("$num x $i = ${num * i}");
    }
    print(""); // Para separar tablas
  }
}
