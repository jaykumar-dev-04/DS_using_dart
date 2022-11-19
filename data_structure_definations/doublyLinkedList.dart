/*
  This is the implementation of stack using array in dart
  Writer :- Patel Jaykumar
  Gmail :- jaykumar.dev.04@gmail.com
  Git :- https://github.com/jaykumar-dev-04
*/

class Node<T> {
  Node<T>? prev;
  T? data;
  Node<T>? next;
  Node({
    this.prev,
    this.data,
    this.next,
  });
}

class DoublyLinkedList<T> {
  Node<T>? head = null;

  void insertAtStart(T data) {
    Node<T> newNode;
    if (head == null) {
      newNode = Node(
        prev: null,
        data: data,
        next: null,
      );
    } else {
      newNode = Node(
        prev: null,
        data: data,
        next: head,
      );
      head!.prev = newNode;
    }
    head = newNode;
    print("[$data] added to list.");
  }

  void insertAtEnd(T data) {
    Node<T> newNode = Node(
      prev: null,
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
      newNode.prev = temp;
      temp.next = newNode;
    }
    print("[${data}] added to list.");
  }

  void deleteAtStart() {
    if (head == null) {
      print("No data to delete");
    } else {
      Node<T>? temp = head;
      head = temp!.next;
      head!.prev = null;
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

  void display() {
    Node<T>? temp = head;
    if (temp == null) {
      print("Linked list is empty.");
    } else {
      while (temp != null) {
        print(
            "[${temp.prev.hashCode}]<-[${temp.data}](${temp.hashCode})->[${temp.next.hashCode}]");
        temp = temp.next;
      }
    }
  }
}
