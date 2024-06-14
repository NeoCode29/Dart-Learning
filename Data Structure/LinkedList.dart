class Node {
  int data;
  Node? next;

  Node(this.data);
}

class SingleLinkedList {
  Node? head;

  bool isEmpty() {
    return head == null;
  }

  void insertBack(int data) {
    Node newNode = Node(data);
    if (isEmpty()) {
      head = newNode;
    }

    Node current = head!;
    while (current.next != null) {
      current = current.next!;
    }

    current.next = newNode;
  }

  void insertFront(int data) {
    Node newNode = Node(data);
    if (isEmpty()) {
      head = newNode;
      return;
    }
    newNode.next = head;
    head = newNode;
  }

  void insertAfter(int dataNode, int data) {
    if (isExist(dataNode)) {
      Node current = head!;
      while (current != null) {
        if (current.data == dataNode) {
          break;
        }
        current = current.next!;
      }
      Node newNode = Node(data);
      newNode.next = current.next;
      current.next = newNode;
    } else {
      print("failed");
    }
  }

  void deleteFront() {
    if (!isEmpty()) {
      if (head!.next != null) {
        head = head!.next;
      } else {
        head = null;
      }
    }
  }

  void deleteBack() {
    if (!isEmpty()) {
      if (head!.next != null) {
        Node current = head!;
        while (current.next!.next != null) {
          current = current.next!;
        }
        current.next = null;
      } else {
        head = null;
      }
    }
  }

  void deleteWhere(int dataNode) {
    if (!isEmpty()) {
      if (head!.data == dataNode) {
        deleteFront();
      } else {
        Node current = head!;
        while (current.next != null) {
          if (current.next!.data == dataNode) {
            break;
          }
          current = current.next!;
        }
        current.next = current.next!.next;
      }
    }
  }

  bool isExist(int value) {
    Node? current = head;

    while (current != null) {
      if (current.data == value) {
        return true;
      }
      current = current.next;
    }

    return false;
  }

  void printList() {
    if (isEmpty()) {
      print("Linked List is empty");
    }
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  SingleLinkedList ll = SingleLinkedList();

  print("Data:");
  ll.insertFront(10);
  ll.insertFront(30);

  print("Operasi Insertion Front of Linked List:");
  ll.printList();

  ll.insertBack(5);
  print("Operasi Insertion Back of Linked List:");
  // ll.PrintList();

  print("Insert After Data: ");
  ll.insertAfter(10, 20);
  ll.printList();

  print("Delete data:");
  // ll.deleteFront();
  ll.deleteWhere(5);
  ll.deleteBack();
  ll.deleteFront();
  ll.printList();
}
