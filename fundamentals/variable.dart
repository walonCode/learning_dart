//working and understanding the types of variable in dart
// also working with type safety and non-type safety
main() {
  var name = 'walon';
  //var is used for type inference
  print(name);

  String fullname = 'Walon-Jallon';
  //string is use for making a variable with string type
  print(fullname);

  var num = 56;
  print(num);

  int number = 70;
  // int is use for making a variable with the interger type
  print(number);

  double decimalNumber = 7.8;
  // double is used for making variable with intergers that have decimals in them
  print(decimalNumber);

  bool options = true;
  // bool is used for making variable with the boolean type
  print(options);

  List<int> array = [1, 2, 3, 4];
  //list<t> list is used to make an array in dart, where t represent the data type
  print(array);

  List<String> array2 = ['name', 'sugar'];
  print(array2);

  List<bool> choices = [true, false, true, false];
  print(choices);

  Set<String> colors = {'green', 'blue', 'red'};
  //set<t> is use to making a list with unique values, where t is the data type used
  print(colors);

  Set<double> pi = {3.142, 3.14235, 5.677};
  print(pi);

  Map<String, int> scores = {'Alice': 90, 'John': 78};
  // map<t,v> is use to make a key value pair in dart, where t and v represent the data type use
  print(scores);

  dynamic value = 5;
  //dynamic is used to variable in which it data type can be change
  value = 'text';
  print(value);

  //nullability of a variable data type
  String? age;
  print(age);

  final num1 = 23;
  final int num2 = 34;
  //final in a keyword used when you want to set a variable once, is cannot be set again
  print(num2);
  print(num1);
  
}
