// dart has the try catch finally syntax that must modern programming languages use to catch error.

main() {
  var command = 'Go';

  try {
    if (command == 'go') {
      print('yes');
    }
  } catch (error) {
    print(error);
  } finally {
    print('clean up');
  }
}
