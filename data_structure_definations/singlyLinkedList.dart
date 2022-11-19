/*
  This is the implementation of stack using array in dart
  Writer :- Patel Jaykumar
  Gmail :- jaykumar.dev.04@gmail.com
  Git :- https://github.com/jaykumar-dev-04
*/

class Node<T> {
  T? data;
  Node<T>? next;
  Node({
    this.data,
    this.next,
  });
}

class SinglyLinkedList<T> {
  Node<T>? head = Node();

  void insertAtStart(T data) {
    Node<T> newNode = Node(data: data, next: head);
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
    print("[${temp!.next!.data}] added to list.");
  }

  void deleteAtStart() {
    if (head == null) {
      print("No data to delete");
    } else {
      Node<T>? temp = head;
      head = temp!.next;
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
      print(last);
    }
  }

  void display() {
    Node<T>? temp = head;
    if (temp == null) {
      print("Linked list is empty.");
    } else {
      do {
        print(temp!.data);
        temp = temp.next;
      } while (temp!.next != null);
    }
  }
}
