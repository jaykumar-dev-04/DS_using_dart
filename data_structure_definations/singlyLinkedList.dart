/*
  This is the implementation of stack using array in dart
  Writer :- Patel Jaykumar
  Gmail :- jaykumar.dev.04@gmail.com
  Git :- https://github.com/jaykumar-dev-04
*/

import 'dart:io';

class Node<T> {
  T? data;
  Node<T>? next;
  Node({
    this.data,
    this.next,
  });
}

class SinglyLinkedList<T> {
  Node<T>? head = null;

  void insertAtStart(T data) {
    Node<T> newNode;
    if (head == null) {
      newNode = Node(data: data, next: null);
    } else {
      newNode = Node(data: data, next: head);
    }
    head = newNode;
    print("[$data] added to list.");
  }

  void insertAtEnd(T data) {
    Node<T> newNode = Node(
      data: data,
      next: null,
    );
    Node<T>? temp = head;
    if (temp == null) {
      head = newNode;
    } else {
      while (temp!.next != null) {
        temp = temp.next;
      }
      temp.next = newNode;
    }
    print("[${data}] added to list.");
  }

  void insertAtIndex(T data, int index) {
    Node<T> newNode = Node(
      data: data,
      next: null,
    );
    Node<T>? temp = head;
    for (var i = 1; i < index; i++) {
      if (temp!.next == null) {
        print("Index does not found.");
        return;
      }
      temp = temp.next;
    }
    newNode.next = temp!.next;
    temp.next = newNode;
    print("[${data}] added at index [$index] in list.");
  }

  void deleteAtStart() {
    if (head == null) {
      print("No data to delete");
    } else {
      Node<T>? temp = head;
      head = temp!.next;
      print("${temp.data} deleted successfully");
    }
  }

  void deleteAtEnd() {
    if (head == null) {
      print("No data to delete");
    } else {
      Node<T>? temp = head;
      Node<T>? last = null;
      while (temp!.next != null) {
        if (temp.next!.next == null) {
          last = temp.next;
          break;
        }
        temp = temp.next;
      }
      temp.next = null;
      print("${last!.data} deleted successfully");
    }
  }

  void deleteAtIndex(int index) {
    Node<T>? temp = head;
    for (var i = 1; i < index; i++) {
      if (temp!.next == null) {
        print("Index does not found.");
        return;
      }
      temp = temp.next;
    }
    print("[${temp!.next!.data}] deleted at index [$index] successfully");
    temp.next = temp.next!.next;
  }

  void display() {
    Node<T>? temp = head;
    if (temp == null) {
      print("Linked list is empty.");
    } else {
      while (temp != null) {
        print("[${temp.data}](${temp.hashCode})->[${temp.next.hashCode}]]");
        temp = temp.next;
      }
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
    print("[3] Insert at index");
    print("[4] Delete at start");
    print("[5] Delete at end");
    print("[6] Delete at index");
    print("[7] Display");
    print("[8] Exit");
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
        stdout.write("Please enter index (Note :- index starts from 0) : ");
        int index = int.parse(stdin.readLineSync() ?? "0");
        stdout.write("Please enter data to insert : ");
        int data = int.parse(stdin.readLineSync() ?? "0");
        linkedList.insertAtIndex(data, index);
        break;
      case "4":
        linkedList.deleteAtStart();
        break;
      case "5":
        linkedList.deleteAtEnd();
        break;
      case "6":
        stdout.write("Please enter index (Note :- index starts from 0) : ");
        int index = int.parse(stdin.readLineSync() ?? "0");
        linkedList.deleteAtIndex(index);
        break;
      case "7":
        linkedList.display();
        break;
      case "8":
        print("Exit");
        return;
      default:
        print("Please select valid option");
    }
  }
}
