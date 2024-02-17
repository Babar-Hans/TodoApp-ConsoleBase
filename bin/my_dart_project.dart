import 'dart:io';
import 'credential.dart';

void main(List<String> arguments) {
  print("========Todo Application Project=========");
  print("");
  stdout.write("Do you want to use todo app (y/n) :  ");
  print("");
  String char = stdin.readLineSync()!;

  //------------------
  if (char == "y") {
    userLoginCredential();
  } else if (char == "n") {
    print("nice day!");
  } else {}
}
