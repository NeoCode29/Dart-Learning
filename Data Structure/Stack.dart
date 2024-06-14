import 'dart:io';

class Stack<T> {
  // atribute _item digunakan untuk menyimpan stack
  List<T> _items = [];

  // method push digunakan untuk menambahkan element ke stack
  void push(T item) {
    _items.add(item);
  }

  // method pop digunakan untuk menghapus element terakhir stack
  T pop() {
    if (isEmpty()) {
      throw Exception('Stack is empty');
    }
    return _items.removeLast();
  }

  // method top digunakan untuk mengambil element terakhir stack
  T top() {
    if (isEmpty()) {
      throw Exception('Stack is empty');
    }
    return _items.last;
  }

  // method isEmpty digunakan untuk mengecek apakah stack kosong atau tidak
  bool isEmpty() {
    return _items.isEmpty;
  }

  @override
  String toString() {
    return _items.toString();
  }
}

void main() {
  var stack = Stack<int>();
  var test = stack.isEmpty();
  print(test); // Output: true
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);
  stack.push(7);
  print(stack); // Output: [1, 2, 3, 4, 5, 7]

  var myNumber = stack.pop();
  print('My 1st number is $myNumber');
  var mySecNumber = stack.pop();
  print('My 2nd number is $mySecNumber');

  print(stack.pop()); // Output: 4
  print(stack); // Output: [1, 2, 3]

  print(stack.top()); // Output: 3
  print(stack.isEmpty()); // Output: false
}
