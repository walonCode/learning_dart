//future allow you to wait for something that will happen in the future, this also allow u catch and handle error

Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Data fetched';
  });
}

// instead of future you can use async await which make if easier
Future<int> getData() async {
  await Future.delayed(Duration(seconds: 3));
  return 56;
}

void main() async {
  fetchData().then((value) => print(value));

  fetchData().then((value) {
    print(value);
  }).catchError((error) {
    print('An error occured');
  });

  try {
    int data = await getData();
    print(data);
  } catch (error) {
    print('An error occured');
  }
}
