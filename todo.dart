import 'dart:io';

void main() {

  procesSelection();

}

final tasks = [] ;

void addTodo() {
  var i = 0;
  while (i == 0) {
    print("Enter task: (if you don't want add task just enter. If you want return to menu just type menu) ");
    String? task  = stdin.readLineSync();
    tasks.add(task);
    print("add sucsesfull!");
    print(tasks);

    if (task == "") {
      i = 1;
    }else if(task == "menu") {
      procesSelection();
    }
  }
}

void deleteTodo() {
  var i = 0 ;
  while (i == 0) {
    print("enter the delete task for the you want (if you don't want delete any task just enter. If you want return to menu just type menu)");
    String? deletedTask = stdin.readLineSync();
    tasks.remove(deletedTask);
    print("delete sucsesful!");
    print(tasks);

    if (deletedTask == "") {
      i = 1;
    }else if(deletedTask == "menu") {
      procesSelection();
    }
  }
}

void changeTaskSelection() {
  var i = 0;
  while (i == 0) {
    print("Please select your task for you want to change If you want return to menu just type menu");
    String? changeTask = stdin.readLineSync();

    print("Please enter your new task");
    String? newTask = stdin.readLineSync();

    changeTask = newTask;
    print(tasks);

    if (changeTask == "") {
      i = 1;
    }else if(changeTask == "menu") {
      procesSelection();
    }
  }
}

void procesSelection() {
  print("1 - task ekle");
  print("2 - task sil");
  print("3 - task degistir");

  print("Yapmak istediginiz islemin numarasini girin");
  String? islemNumarasi = stdin.readLineSync();

  if (islemNumarasi == "1") {
    addTodo();
  }else if(islemNumarasi == "2") {
    deleteTodo();
  }else if(islemNumarasi == "3") {
    changeTaskSelection();
  }
}
