//ToDo List
//this project make use of all the features i learnt in dart
// loops,variable,function,list and using core libraries


import 'dart:io';

void main() {
  List<String> todoList = [];

  while (true) {
    print('\n Todo List App');
    print('1. View Task');
    print('2. Add Task');
    print("3. Delete Task");
    print('4. Exit');
    stdout.write('Choose an option: ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        viewTask(todoList);
      case '2':
        addTask(todoList);
      case '3':
        deleteTask(todoList);
      case '4':
        print('Exitig....');
        exit(0);
      default:
        print('Invalid Option. Please try again');
    }
  }
}

void viewTask(List<String> todoList) {
  if (todoList.isEmpty) {
    print('\n No task available');
  } else {
    print('\n Your Task');
    for (int i = 0; i < todoList.length; i++) {
      print('${i + 1}. ${todoList[i]}');
    }
  }
}

void addTask(List<String> todoList) {
  stdout.write('\n Enter a task: ');
  String? task = stdin.readLineSync();
  if (task != null && task.isNotEmpty) {
    todoList.add(task);
  } else {
    print('\n task cannot be empty');
  }
}

void deleteTask(List<String> todoList) {
  if (todoList.isEmpty) {
    print('\n No task to delete');
  } else {
    stdout.write('\n Enter task number to delete: ');
    String? input = stdin.readLineSync();
    int? index = int.tryParse(input ?? '');
    if (index != null && index > 0 && index <= todoList.length) {
      todoList.removeAt(index - 1);
      print('\n Task delete successfuly');
    } else {
      print('\n Invalid task number');
    }
  }
}
