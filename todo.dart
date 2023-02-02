import 'dart:io';

void main() {
  procesSelection();
}

final tasks = [] ;

void addTodo() {
  var i = 0;
  var number = tasks.length + 1;

  while (i == 0) {
    print("Enter task: (if you want return to menu just enter)) ");
    String? task  = stdin.readLineSync();
    tasks.add(task);
    print("add sucsesfull!");
    print(tasks);

   if (task == "") {
      i = 1;
      procesSelection();
    }
  }
}

void deleteTodo() {
  var i = 0 ;
  while (i == 0) {
    print("enter the delete task for the you want (if you want return to menu just enter)");
    String? deletedTask = stdin.readLineSync();
    tasks.remove(deletedTask);
    print("delete sucsesful!");
    print(tasks);

    if (deletedTask == "") {
      i = 1;
      procesSelection();
    }
  }
}

void changeTaskSelection() {
  var i = 0;
  while (i == 0) {
    print("Please select your task for you want to change. (if you want return to menu enter task number 0 and tap enter twice.)");
    int? taskIndex = int.parse(stdin.readLineSync()!);

    print("Please enter your new task (if you want go to menu just enter)");
    String? newTask = stdin.readLineSync();

    if (taskIndex == 0) {
      i = 1;
      procesSelection();
    }

    tasks[taskIndex - 1] = newTask;
    print(tasks);

    
  }
}

void completeTask() {
  var i = 0;
  while (i == 0) {
    print("enter the complete task number");
    int? compTask = int.parse(stdin.readLineSync()!);

    tasks[compTask - 1] = tasks[compTask - 1] + " TAMAMLANDI" ;
    print(tasks);
    procesSelection();
  }
}

void procesSelection() {
  print("1 - Task ekle");
  print("2 - Task sil");
  print("3 - Task degistir");
  print("4 - Tamamlananlari isaretle");

  print("Yapmak istediginiz islemin numarasini girin");
  String? islemNumarasi = stdin.readLineSync();

  if (islemNumarasi == "1") {
    addTodo();
  }else if(islemNumarasi == "2") {
    deleteTodo();
  }else if(islemNumarasi == "3") {
    changeTaskSelection();
  }else if(islemNumarasi == "4");{
      completeTask();
  }
}