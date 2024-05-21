import 'dart:io';

class Stack {
  // atribute _item digunakan untuk menyimpan stack
  List<String> _items = [];

  // method push digunakan untuk menambahkan element ke stack
  void push(String item) {
    _items.add(item);
  }

  // method pop digunakan untuk menghapus element terakhir stack
  String pop() {
    if (isEmpty()) {
      throw Exception('Stack is empty');
    }
    return _items.removeLast();
  }

  // method top digunakan untuk mengambil element terakhir stack
  String top() {
    if (isEmpty()) {
      throw Exception('Stack is empty');
    }
    return _items.last;
  }

  // method isEmpty digunakan untuk mengecek apakah stack kosong atau tidak
  bool isEmpty() {
    return _items.isEmpty;
  }
}

