//function
import 'dart:io';
import 'todo.dart';

Todo myTodo = Todo();

userLoginCredential() {
  print("");
  print("===============Login Account================== \n");
  stdout.write("Please Sign in Your Account \n");
  print("_______________________________________________\n");
  int userCredential = 1;

  while (userCredential == 1) {
    stdout.write("Enter your email: ");
    String userEmail = stdin.readLineSync()!;

    stdout.write("Enter your password: ");
    String password = stdin.readLineSync()!;

    if (userEmail == "babarhans34@gmail.com" && password == "abc123") {
      print("==========================");
      print("Login Successfully");
      print("==========================");
      print("");
      actionTodo();

      userCredential = 0;
    } else {
      print("==========================");
      print("Login Failed! try again...");
      print("==========================");
      userCredential = 1;
    }
  }
}

actionTodo() {
  print("Enter Your Action! ");
  print("[1.add = To add your todo]");
  print("[2.remove = To add your todo]");
  print("[1.show = To add your todo]");

  String choice = stdin.readLineSync()!;
  print("");

  while (choice != "exit") {
    if (choice == "add") {
      do {
        stdout.write("Enter the Todo you want to add: ");
        String item = stdin.readLineSync()!;
        print("");
        myTodo.addItem(item);
        print("Do you want to add more items (y/n)");
        String ynChar = stdin.readLineSync()!;
        if (ynChar != "y") {
          break; // Exit the loop if the user does not want to add more items
        }
      } while (true);
    } else if (choice == "remove") {
      stdout.write("Enter the Todo you want to remove: ");
      String item = stdin.readLineSync()!;
      myTodo.removeItem(item);
    } else if (choice == "show") {
      myTodo.showItem(myTodo.list);
    }

    // Prompt for next action
    print("\nEnter Your Next Action! ");
    choice = stdin.readLineSync()!;
    print("");
  }
}
