/*
  This is the implementation of stack using array in dart
  Writer :- Patel Jaykumar
  Gmail :- jaykumar.dev.04@gmail.com
*/

import 'dart:io';

import 'stack.dart';

void main(List<String> args) {
  String? dataStructure;

  print("Written By :- Patel Jaykumar");
  print("Gmail :- jaykumar.dev.04@gmail.com");
  print("Git :- https://github.com/jaykumar-dev-04");
  print(
      "(Note :- Currently we are using just int data for all data structures. If you want other data type please mail me.)");

  while (true) {
    print("\n");
    print("[1] Stack");
    print("[2] Queue");
    print("[3] Singly Linked List");
    print("[4] Doubly Linked List");
    print("[5] Exit");
    stdout.write("Please select Data Structure : ");
    dataStructure = stdin.readLineSync();
    switch (dataStructure) {
      case "1":
        stackImplementation();
        break;
      case "2":
        print("Data structure comming soon...");
        break;
      case "3":
        print("Data structure comming soon...");
        break;
      case "4":
        print("Data structure comming soon...");
        break;
      case "5":
        print("Thank you.");
        exit(0);
      default:
        print("Please select valid option");
    }
  }
}

stackImplementation() {
  String? selection;
  int size;
  print("\n");
  stdout.write("Please enter the size of stack : ");
  size = int.parse(stdin.readLineSync() ?? "0");
  Stack<int> stack = Stack<int>(size: size);

  while (true) {
    print("\n");
    print("[1] Push");
    print("[2] Pop");
    print("[3] Display");
    print("[4] Exit");
    stdout.write("Please select operation : ");
    selection = stdin.readLineSync();
    switch (selection) {
      case "1":
        stdout.write("Please enter data to insert : ");
        int data = int.parse(stdin.readLineSync() ?? "0");
        stack.push(data);
        break;
      case "2":
        stack.pop();
        break;
      case "3":
        stack.display();
        break;
      case "4":
        print("Exit");
        return;
      default:
        print("Please select valid option");
    }
  }
}
