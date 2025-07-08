import 'dart:io';

void main() {
  // Productos: ID, Nombre, Precio, IVA (true/false)
  List<List<dynamic>> productos = [
    [1, "Manzana", 2000.0, true],
    [2, "Leche", 3500.0, false],
    [3, "Arroz", 5000.0, true],
    [4, "Azúcar", 2500.0, true],
    [5, "Carne", 15000.0, false],
    [6, "Pan", 1000.0, false],
    [7, "Huevos", 6000.0, true],
    [8, "Aceite", 8000.0, true],
    [9, "Queso", 7000.0, false],
    [10, "Café", 12000.0, true],
  ];

  List<List<dynamic>> factura = List.generate(11, (_) => List.filled(7, ""));

  int productosLlevados = 0;

  while (productosLlevados < 10) {
    stdout.write("Ingrese ID del producto (1-10): ");
    int id = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

    var producto = productos.firstWhere((p) => p[0] == id, orElse: () => []);

    if (producto.isEmpty) {
      print("Producto no encontrado.");
      continue;
    }

    stdout.write("Cantidad a llevar: ");
    int cantidad = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

    double valorUnidad = producto[2];
    bool tieneIVA = producto[3];

    double valorTotal = valorUnidad * cantidad;
    double iva = tieneIVA ? valorTotal * 0.19 : 0;
    double totalConIVA = valorTotal + iva;

    factura[productosLlevados] = [
      productosLlevados + 1, // Ítem
      producto[0], // ID
      producto[1], // Nombre
      cantidad,
      valorUnidad,
      iva,
      totalConIVA,
    ];

    productosLlevados++;

    stdout.write("¿Desea agregar otro producto? (sí/no): ");
    String resp = (stdin.readLineSync() ?? "").toLowerCase();
    if (resp != "sí" && resp != "si") {
      break;
    }
  }

  print("\nFactura:");
  print("Ítem\tID\tProducto\tCantidad\tValor Unidad\tIVA\tTotal");

  for (int i = 0; i < productosLlevados; i++) {
    var fila = factura[i];
    print("${fila[0]}\t${fila[1]}\t${fila[2]}\t${fila[3]}\t\t${fila[4].toStringAsFixed(2)}\t\t${fila[5].toStringAsFixed(2)}\t${fila[6].toStringAsFixed(2)}");
  }
}
