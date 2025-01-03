import 'dart:io';

void main() {
  for (int i = 1; i <= 5; i++,) {
    for (int j = 1; j <= i; j++) {
      stdout.write('*');
    }
    print('');
  }
  for (int i = 5; i >= 1; i--,) {
    for (int j = 1; j < i; j++) {
      stdout.write('*');
    }
    print('');
  }

  //
  for (int i = 0; i <11; i++,) {
    for (int k = 11; k >= i; k--) {
      stdout.write(' ');
    }
    for (int k = 1; k <= i * 2 - 1; k++) {
      stdout.write('*');
    }
    print('');
  }
}
