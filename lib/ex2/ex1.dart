import 'dart:math';

void main() {
 print( RandomStrings('n'));

}

List<String> RandomStrings(String Char,
   ) {
  final Random random = Random();
  final List<String> randomStrings = [];

  for (int i = 0; i < 3; i++) {
    String randomStr = Char;
    for (int j = 1; j < 3; j++) {
      
      final char = random.nextBool()
          ? String.fromCharCode(
              random.nextInt(26) + (random.nextBool() ? 65 : 97)
              ) 
          : random.nextInt(3).toString()
          ; 
      randomStr += char;
    }
    randomStrings.add(randomStr);
  }

  return randomStrings;
}
