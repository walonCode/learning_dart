//closure function
Function crreatAdder(int addBy) {
  return (int number) => number + addBy;
}

Function makeMultiplier(int multiplier) {
  return (int value) => value * multiplier;
}

//pure function
int add(int a, int b) {
  return a + b;
}

//recursion
int factorial(int n) {
  if (n < 1) {
    return 1;
  }
  return n * factorial(n - 1);
}

//lazy evalution
Iterable<int> generateNumbers(int count) sync* {
  for (int i = 0; i < count; i++) {
    yield i;
  }
}

void main() {
  int num1 = 4;
  int num2 = 5;

  //conditional shorthand for if-else
  int isGreater = num1 > num2 ? num1 : num2;
  print(isGreater);

  //lamdbas[anonymous function]
  var list = [1, 2, 3, 4, 5];
  list.forEach((item) => print(item));

  //higher other function
  //functions that take another function as parameter

  List<int> numbers = [1, 2, 3, 4, 5];
  var squaredNumbers = numbers.map((number) => number * number);
  print(squaredNumbers);

  var adder = crreatAdder(5);
  print(adder(20));

  var multiplyByFour = makeMultiplier(4);
  print(multiplyByFour(5));

  List<int> unchangedNumber = [1, 2, 3, 4];

  //instead of changing the above list, create a new one and work with it
  var newNumberList = unchangedNumber.map((number) => number + 10);
  print(newNumberList);

  //working with pure function
  print(add(4, 6));
  print(add(4, 6));

  //functional composition
  String addExclamation(String text) => '$text!';
  String toUpperCase(String text) => text.toUpperCase();

  var shout = (String text) => addExclamation(toUpperCase(text));
  print(shout('walon'));

  //working with recursion
  print(factorial(5));

  //working with lazy evalution
  var num4 = generateNumbers(5);

  for (var number in num4) {
    print(number);
  }
}
