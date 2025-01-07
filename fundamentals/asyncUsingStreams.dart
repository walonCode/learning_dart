// using stream to do asynchronous in dart
Stream<int> numberStream() async* {
  for (int i = 1; i < 5; i++) {
    await Future.delayed(Duration(seconds: 2));
    yield i;
  }
}


void main() {
  numberStream().listen((number) {
    print(number);
  });
}
