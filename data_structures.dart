/*
  This is the implementation of stack using array in dart
  Writer :- Patel Jaykumar
  Gmail :- jaykumar.dev.04@gmail.com
  Git :- https://github.com/jaykumar-dev-04
*/

import 'dart:io';

import 'data_structure_definations/circularQueue.dart';
import 'data_structure_definations/doublyLinkedList.dart';
import 'data_structure_definations/queue.dart';
import 'data_structure_definations/singlyLinkedList.dart';
import 'data_structure_definations/stack.dart';

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
    print("[3] Circular Queue");
    print("[4] Singly Linked List");
    print("[5] Doubly Linked List");
    print("[6] Exit");
    stdout.write("Please select Data Structure : ");
    dataStructure = stdin.readLineSync();
    switch (dataStructure) {
      case "1":
        stackImplementation();
        break;
      case "2":
        queueImplementation();
        break;
      case "3":
        circularQueueImplementation();
        break;
      case "4":
        singlyLinkedListImplementation();
        break;
      case "5":
        doublyLinkedListImplementation();
        break;
      case "6":
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

queueImplementation() {
  String? selection;
  int size;
  print("\n");
  stdout.write("Please enter the size of queue : ");
  size = int.parse(stdin.readLineSync() ?? "0");
  Queue<int> queue = Queue<int>(size: size);

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
        queue.push(data);
        break;
      case "2":
        queue.pop();
        break;
      case "3":
        queue.display();
        break;
      case "4":
        print("Exit");
        return;
      default:
        print("Please select valid option");
    }
  }
}

circularQueueImplementation() {
  String? selection;
  int size;
  print("\n");
  stdout.write("Please enter the size of queue : ");
  size = int.parse(stdin.readLineSync() ?? "0");
  CircularQueue<int> queue = CircularQueue<int>(size: size);

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
        queue.push(data);
        break;
      case "2":
        queue.pop();
        break;
      case "3":
        queue.display();
        break;
      case "4":
        print("Exit");
        return;
      default:
        print("Please select valid option");
    }
  }
}

singlyLinkedListImplementation() {
  String? selection;
  SinglyLinkedList linkedList = SinglyLinkedList();
  while (true) {
    print("\n");
    print("[1] Insert at start");
    print("[2] Insert at end");
    print("[3] Delete at start");
    print("[4] Delete at end");
    print("[5] Display");
    print("[6] Exit");
    stdout.write("Please select operation : ");
    selection = stdin.readLineSync();
    switch (selection) {
      case "1":
        stdout.write("Please enter data to insert : ");
        int data = int.parse(stdin.readLineSync() ?? "0");
        linkedList.insertAtStart(data);
        break;
      case "2":
        stdout.write("Please enter data to insert : ");
        int data = int.parse(stdin.readLineSync() ?? "0");
        linkedList.insertAtEnd(data);
        break;
      case "3":
        linkedList.deleteAtStart();
        break;
      case "4":
        linkedList.deleteAtEnd();
        break;
      case "5":
        linkedList.display();
        break;
      case "6":
        print("Exit");
        return;
      default:
        print("Please select valid option");
    }
  }
}

doublyLinkedListImplementation() {
  String? selection;
  DoublyLinkedList linkedList = DoublyLinkedList();
  while (true) {
    print("\n");
    print("[1] Insert at start");
    print("[2] Insert at end");
    print("[3] Delete at start");
    print("[4] Delete at end");
    print("[5] Display");
    print("[6] Exit");
    stdout.write("Please select operation : ");
    selection = stdin.readLineSync();
    switch (selection) {
      case "1":
        stdout.write("Please enter data to insert : ");
        int data = int.parse(stdin.readLineSync() ?? "0");
        linkedList.insertAtStart(data);
        break;
      case "2":
        stdout.write("Please enter data to insert : ");
        int data = int.parse(stdin.readLineSync() ?? "0");
        linkedList.insertAtEnd(data);
        break;
      case "3":
        linkedList.deleteAtStart();
        break;
      case "4":
        linkedList.deleteAtEnd();
        break;
      case "5":
        linkedList.display();
        break;
      case "6":
        print("Exit");
        return;
      default:
        print("Please select valid option");
    }
  }
}
