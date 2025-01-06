// if-else statement in dart

main() {
  int age = 23;

  //checking to see it age is above 18

  if (age >= 18 && age <= 20) {
    print('just adult');
  } else if (age >= 20 && age <= 25) {
    print('old adult');
  } else {
    print('child');
  }

  String answer = 'no';

  //checking to see if answer is yes  or no
  if (answer == 'No' || answer == 'no' || answer == 'NO') {
    print('Your choose No');
  } else {
    print('You choose yes');
  }
}
