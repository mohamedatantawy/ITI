import 'dart:io';

void main() {
  String name = stdin.readLineSync()!;
  longword(name);
}

void longword(String name) {
  String namelong = name;

  List words = namelong.split(RegExp(r'\s+'));
  String longestWord = '';

  
  for (int i = 0; i < words.length; i++) {
    if (words[i].toString().length > longestWord.length) {
      longestWord = words[i];
    }
  }
  print(longestWord);
}
