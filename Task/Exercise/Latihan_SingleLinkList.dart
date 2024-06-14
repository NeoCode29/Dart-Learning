import 'dart:collection';

class Node<T> {
  T? nodeValue = null;
  Node<T>? next = null;

  Node({this.nodeValue});
}

class SingleLinkedList<T> {
  Node<T>? head = null;

  // Method untuk membuat linked list
  Node<T> buatLinkedList(Node<T> front, Node<T> p, Node<T> q) {
    p.next = q;
    front.next = p;
    head = front;
    return head!;
  }

  // Method untuk menemukan node didalam linked list
  Node<T> findNode(T value) {
    Node<T> temp = head!;
    while (temp.next != null) {
      if (temp.nodeValue == value) {
        return temp;
      }
    }
    return Node();
  }

  bool isEmpty() {
    return head == null;
  }

  // Method untuk menambahkan node kedalam linked list bedasarkan posisinya
  void InsertAtPosition(int position, T value) {
    Node<T> newNode = new Node<T>(nodeValue: value);
    if (position == 0) {
      newNode.next = head;
      head = newNode;
      return;
    }

    Node<T> current = head!;
    for (int i = 0; i < position - 1; i++) {
      if (current.next == null) {
        throw Exception("Position is out of range.");
      }
      current = current.next!;
    }

    newNode.next = current.next;
    current.next = newNode;
  }

  // Method untuk menghapus node didalam linked list bedasarkan posisinya
  void DeleteAtPosition(int position) {
    if (head == null) {
      return;
    }

    if (position == 0) {
      head = head!.next;
      return;
    }

    Node<T> current = head!;
    for (int i = 0; i < position - 1; i++) {
      if (current.next == null) {
        throw Exception("Position is out of range.");
      }

      current = current.next!;
    }

    if (current.next == null) {
      throw Exception("Position is out of range.");
    }

    current.next = current.next!.next!;
  }

  void printList() {
    if (isEmpty()) {
      print("Linked List is empty");
    }
    Node? current = head;
    while (current != null) {
      print(current.nodeValue);
      current = current.next;
    }
  }

  int lenght() {
    int count = 0;
    Node? current = head;
    while (current!.next != null) {
      count++;
      current = current.next;
    }

    return count;
  }
}

void main() {
  SingleLinkedList<int> linkedList = SingleLinkedList<int>();

  linkedList.buatLinkedList(
      Node<int>(), Node(nodeValue: 20), Node(nodeValue: 30));

  linkedList.InsertAtPosition(2, 40);
  linkedList.DeleteAtPosition(1);
  linkedList.printList();
}
