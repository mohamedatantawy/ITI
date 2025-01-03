import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
 
  int number = int.tryParse(input)!;
  String output = '';

  for (int i = 1; i < number + 1; i++) {
    if (i.isEven) {
      output = output + 'I love ';
    } else {
      output = output + 'I hate ';
    }
    if (i != number) {
      output = output + 'that ';
    }
    if (i == number) {
      output += 'it.';
    }
  }
  print(output);
}
