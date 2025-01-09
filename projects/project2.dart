//Task management system
// Admin
//User
// Leader
import 'dart:io';

void main() {
  while (true) {
    print('Welcome to Taskify');
    print('Pick from the options');
    print('1. Admin');
    print('2. User');
    print('3. Leader');
    print("4. Exit / Logout");
    stdout.write('Login: ');
    String? option = stdin.readLineSync();

    switch (option) {
      case "1":
        admin();
      case "2":
        user();
      case "3":
        leader();
      case "4":
        print('logout......');
        exit(0);
      default:
        print('Pick a valid option');
    }
  }
}

void admin() {
  print('Welcome admin');
}

void user() {
  print('welcomee user');
}

void leader() {
  print('Welcome leader');
}
