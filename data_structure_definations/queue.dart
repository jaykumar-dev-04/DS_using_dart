/*
  This is the implementation of queue using array in dart
  Writer :- Patel Jaykumar
  Gmail :- jaykumar.dev.04@gmail.com
  Git :- https://github.com/jaykumar-dev-04
*/

import 'dart:io';

class Queue<T> {
  List<T?>? queue;
  int front = -1;
  int rear = -1;
  final int size;

  Queue({
    required this.size,
  }) {
    this.queue = List<T?>.filled(
      size,
      null,
      growable: false,
    );
  }

  bool isFull() {
    return front == size - 1;
  }

  bool isEmpty() {
    return front == -1 || front > rear;
  }

  void push(T data) {
    if (isFull()) {
      print("Queue overflowed.");
    } else {
      if (front == -1 && rear == -1) {
        front = rear = 0;
      } else {
        ++rear;
      }
      queue![rear] = data;
      print("[$data] inserted into queue.");
    }
  }

  void pop() {
    if (isEmpty()) {
      print("Queue underflowed.");
    } else {
      print("[${queue![front]}] inserted into queue.");
      queue![front] = null;
      if (front == rear) {
        front = -1;
        rear = -1;
      } else {
        front = front + 1;
      }
    }
  }

  void display() {
    if (isEmpty()) {
      print("Queue is empty.");
    } else {
      for (var data in queue!.reversed) {
        if (data == null) {
          stdout.write("");
        } else {
          print("$data");
        }
      }
    }
  }
}
