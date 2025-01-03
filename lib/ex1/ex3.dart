import 'dart:io';

void main() {
  String number = stdin.readLineSync()!;
  int number1 = int.tryParse(number)!;
  String re= String.fromCharCodes(number1.toString().runes.toList().reversed);
  print(re);
}
