import 'dart:io';

void main() {
  procesSelection();
}

final tasks = [];

void addTodo() {
  print("Please enter task!");
  String? task = stdin.readLineSync();
  tasks.add({"todo": task, "done": false});
  print("add sucsesfull!");
  procesSelection();
}

void deleteTodo() {
  print("Please enter the order number of task for you want to delete!");
  int? taskNumber = int.parse(stdin.readLineSync()!);
  tasks.removeAt(taskNumber - 1);
  procesSelection();
}

void changeTaskSelection() {
  print("Please select your task for you want to change!");
  int? taskIndex = int.parse(stdin.readLineSync()!);
  String? newTask = stdin.readLineSync();
  tasks[taskIndex - 1]['todo'] = newTask;
  tasks[taskIndex - 1]['done'] = false;
  procesSelection();
}

void completeTask() {
  print("enter the complete task number");
  int? compTask = int.parse(stdin.readLineSync()!);

  tasks[compTask - 1]['done'] = !tasks[compTask - 1]['done'];

  procesSelection();
}

void procesSelection() {
  if (tasks.length > 0) {
    for (var i = 0; i < tasks.length; i++) {
      String degisken = tasks[i]['todo'].toString()[0].toUpperCase() +
          tasks[i]['todo'].toString().substring(1).toLowerCase();
      print(
          "${i + 1} ${degisken} -- ${tasks[i]['done'] ? "Yapildi" : "Yapilmadi"}");
    }
  }

  print(
      "1 - Add task\n2 - Delete task\n3 - Change task\n4 - Complete to task\n5 - Quit the program");

  print("Please enter the number of proces you want to do");
  int? number = int.parse(stdin.readLineSync()!);

  switch (number) {
    case 1:
      {
        addTodo();
      }
      break;
    case 2:
      {
        deleteTodo();
      }
      break;
    case 3:
      {
        changeTaskSelection();
      }
      break;
    case 4:
      {
        completeTask();
      }
      break;
    case 5:
      {
        return;
      }
    default:
      {
        print("Please enter valid process number");
        procesSelection();
      }
  }
}
