//using the for and while loops in dart

main() {
  var array = [1, 2, 3, 4, 5, 6];

  //printing each value in the array
  for (var value in array) {
    print(value);
  }

  //getting the total from an array
  int total = 0;

  for (int value in array) {
    total += value;
  }
  print('Total number from the array is: $total');

  var collections = [1, 2, 3];
  //for each get each element in a list set or map
  collections.forEach(print);

  int num1 = 5;
  while (num1 > 0) {
    print('hello walon you are great');
    num1--;
  }

  do {
    print('i love walon❤️');
    num1--;
  } while (num1 > 0);
}
