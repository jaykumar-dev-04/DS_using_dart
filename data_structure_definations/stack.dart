/*
  This is the implementation of stack using array in dart
  Writer :- Patel Jaykumar
  Gmail :- jaykumar.dev.04@gmail.com
*/

import 'dart:io';

class Stack<T> {
  List<T?>? stack;
  int top = -1;
  final int size;

  Stack({
    required this.size,
  }) {
    this.stack = List<T?>.filled(
      size,
      null,
      growable: false,
    );
  }

  bool isFull() {
    return top >= size;
  }

  bool isEmpty() {
    return top == -1;
  }

  void push(T data) {
    if (isFull()) {
      print("Stack overflowed.");
    } else {
      stack![++top] = data;
      print("[$data] inserted into stack.");
    }
  }

  void pop() {
    if (isEmpty()) {
      print("Stack underflowed.");
    } else {
      print("[${stack![top]}] deleted from stack.");
      stack![top--] = null;
    }
  }

  void display() {
    if (isEmpty()) {
      print("Stack is empty.");
    } else {
      for (var data in stack!.reversed) {
        if (data == null) {
          stdout.write("");
        } else {
          print("$data");
        }
      }
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
