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
