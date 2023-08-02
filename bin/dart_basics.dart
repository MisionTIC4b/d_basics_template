import 'dart:io';

import 'package:dart_basics/my_converter.dart';

void main(List<String> arguments) {
  final converter = MyConverter();
  print("Convertir:");
  print("1. Binario a Decimal");
  print("2. Decimal a Binario");
  int option = int.parse(stdin.readLineSync()!);
  if (option == 1) {
    print("Escribe el numero binario:");
    converter.binary = stdin.readLineSync()!;
    print('Decimal: ${converter.convertBinary()}');
  } else if (option == 2) {
    print("Escribe el numero decimal:");
    converter.decimal = stdin.readLineSync()!;
    print('Binario: ${converter.convertDecimal()}');
  }
}
