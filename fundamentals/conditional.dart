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

  //in case you don't want to use if else or it get to complex
  // in dart you can also use switch statements

  var command = 'OPEN';

  switch (command) {
    case 'CLOSED':
      print('four');
    case 'OPEN':
      print('five');
    default:
      print('one');
  }
}
