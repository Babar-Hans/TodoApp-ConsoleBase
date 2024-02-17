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
  String choice = stdin.readLineSync()!;
}
