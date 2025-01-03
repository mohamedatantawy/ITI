import 'dart:io';

void main() {
  String kString = stdin.readLineSync()!;
  int k = int.tryParse(kString)!;
  String nString = stdin.readLineSync()!;
  int n = int.tryParse(nString)!;
  String wString = stdin.readLineSync()!;
  int w = int.tryParse(wString)!;
  int totalnumber = 0;
  for (int i = 1; i < w + 1; i++) {
    totalnumber += k * i;
  }
  print(totalnumber - n);
}
