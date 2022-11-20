/*
  This is the implementation of queue using array in dart
  Writer :- Patel Jaykumar
  Gmail :- jaykumar.dev.04@gmail.com
  Git :- https://github.com/jaykumar-dev-04
*/


class CircularQueue<T> {
  List<T?>? queue;
  int front = -1;
  int rear = -1;
  final int size;

  CircularQueue({
    required this.size,
  }) {
    this.queue = List<T?>.filled(
      size,
      null,
      growable: false,
    );
  }

  bool isFull() {
    return ((rear + 1) % size) == front;
  }

  bool isEmpty() {
    return front == -1 && rear == -1;
  }

  void push(T data) {
    if (front == -1 && rear == -1) {
      front = rear = 0;
    } else if (isFull()) {
      print("Queue overflowed.");
      return;
    } else {
      rear = (rear + 1) % size;
    }
    queue![rear] = data;
    print("[$data] inserted into queue.");
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
        front = (front + 1) % size;
      }
    }
  }

  void display() {
    if (isEmpty()) {
      print("Queue is empty.");
    } else {
      int i;
      for (i = front; i != rear; i = (i + 1) % size) {
        print("${queue![i]}");
      }
      print("${queue![i]}");
    }
  }
}
