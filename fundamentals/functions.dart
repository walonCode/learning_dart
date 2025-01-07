//writting functions in dart is similar to thaat of c programming where the return type must be stated...

// this function below requires you to make sure the parameter type is meet or it would throw an error
bool isNooble(int atomicNumber) {
  return true;
}

int add(int num1, int num2) {
  int total = num1 + num2;
  return total;
}

int fibo(int n) {
  if (n <= 1) {
    return n;
  }
  return fibo(n - 1) + fibo(n - 2);
}

//optional types of  parameter functions

String? color(String? color) {
  if (color != null) {
    return color;
  }
  return 'white';
}

void main() {
  var checker = isNooble(24);
  print(checker);

  var total = add(1, 2);
  print(total);

  var fiboChecker = fibo(10);
  print(fiboChecker);

  var test = color(null);
  print(test);
}
