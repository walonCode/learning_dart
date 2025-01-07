// here we will be learning about classes in dart

class Person {
  //field
  String name;
  int age;

  // constructor
  Person(this.name, this.age);

  //Method
  // instance
  void introduce() {
    print('Hello, my name is $name and i am $age years old');
  }
}

// we are talking about static class with are accessible using the static keyword

class MathUtils {
  //static
  static const double pi = 3.14259;
  static double square(double num) {
    return num * num;
  }
}

//encapsulation
// the process of hiding the internal of the class

class Car {
  String _engine;

  Car(this._engine);

  void startEngine() {
    print('Engine $_engine started..');
  }
}

//inheritance
// the process of using code from another class
class Animal {
  void makeSound() {
    print('Animal sound');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Bark');
  }
}

//abstract class
// process of defining an empty method in a class
abstract class Shape {
  void draw(); //Abstract method
}

class Cirle extends Shape {
  @override
  void draw() {
    print('draw a circle');
  }
}

// mixin
// process of combining two classe together using the with keyword
mixin Flyable {
  void fly() {
    print('flying');
  }
}

class Bird with Flyable {}

//interface
// process of implementing many class in to one huge class
class Engine {
  void makeSound() {}
}

class Drive {
  void drive() {}
}

class Plane implements Engine, Drive {
  @override
  void makeSound() {
    print('vooooo');
  }

  @override
  void drive() {
    print('going');
  }
}

void main() {
  // you could name the variable with type of the class or use the var keyword
  Person person1 = new Person('walon', 17);
  person1.introduce();

  var person2 = new Person('zoom', 60);
  person2.introduce();

  print(MathUtils.pi);
  print(MathUtils.square(4));

  var newCar = new Car('XL40');
  newCar.startEngine();

  var dog = new Animal();
  dog.makeSound();

  var drawCircle = new Cirle();
  drawCircle.draw();

  var bird = new Bird();
  bird.fly();

  var plane = new Plane();
  plane.drive();
  plane.makeSound();
}
