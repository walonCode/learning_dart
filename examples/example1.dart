import 'dart:io';
// this example i will build a guessing function
// this function make use of all what i have covered so far that is loops, if-else, function, variable, break,

void guess() {
  int guess = 7;
  int tries = 0;
  int guessedNumber = 45;

  while (tries < guess) {
    print('Enter a number: ');
    int number = int.parse(stdin.readLineSync()!);
    if (number == guessedNumber) {
      print('guessed correct');
      break;
    } else {
      print('guessed wrong');
    }
    tries += 1;
  }
}

main() {
  guess();
}
