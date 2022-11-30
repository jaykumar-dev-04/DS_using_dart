/*
  inthis is the implementation of stack using array in dart
  Writer :- Patel Jaykumar
  Gmail :- jaykumar.dev.04@gmail.com
*/

class Node<int> {
  Node<int>? right;
  int data;
  Node<int>? left;
  Node({
    this.right,
    required this.data,
    this.left,
  });
}

class intree<int> {
  Node<int>? root = null;

  Future<Node<int>> createNode(int data) async {
    Node<int> newNode = Node(data: data);
    return newNode;
  }

  insert(int data) {
    createNode(data).then((newNode) {
      if (root == null) {
        root = newNode;
      } else {
        Node<int>? temp = root;
        Node<int>? last = null;
        while (temp != null) {
          last = temp;
          if (checkData(data, temp)) {
            temp = temp.right;
          } else {
            temp = temp.left;
          }
        }
        if (checkData(data, last)) {
          last!.right = newNode;
        } else {
          last!.left = newNode;
        }
      }
      print("[$data] added to tree.");
    });
  }

  // delete(Node<int>? root, int data) {
  //   if (root == null) {
  //     return root;
  //   }
  //   if (!checkData(data, root)) {
  //     root.left = delete(root.left, data);
  //   } else if (checkData(data, root)) {
  //     root.right = delete(root.right, data);
  //   } else {
  //     if (root.left == null) {
  //       return root.right;
  //     } else if (root.right == null) {
  //       Node<int>? temp = root.left;
  //       return temp;
  //     }
  //     Node<int>? temp = null;
  //     //  Node<int>? temp = smallest_Node<int>?(root.right);
  //     root.data = temp!.data;
  //     root.right = delete(root.right, temp.data);
  //   }
  //   return root;
  // }

  checkData(data, Node<int>? node) => data > node!.data;
}
