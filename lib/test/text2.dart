import 'dart:io';

void main() {
  String n, m, a;
  n = stdin.readLineSync()!;
  int n1 = int.tryParse(n)!;
  m = stdin.readLineSync()!;
  int m1 = int.tryParse(m)!;
  a = stdin.readLineSync()!;
  int a1 = int.tryParse(a)!;
  int sum = 0;
  for (int i = a1;i < n1;i+=a1 ) {
  
    sum++;
  }
  sum++;
  int sum1 = 0;
  for (int i = a1 ;i< m1; i+=a1) {
    
    sum1++;
  }
  sum1++;
  print(sum * sum1);
}
