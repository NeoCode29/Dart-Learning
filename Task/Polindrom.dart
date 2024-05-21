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

  String toString() {
    return _items.join(",");
  }

  List stackReversed() {
    return _items.reversed.toList();
  }
}

class Palindrom {
  var stack = Stack();

  bool isPalindrom(String word) {
    bool result = false;
    var x = (word.length / 2).floor();

    for (var i = 0; i < x; i++) {
      stack.push(word[i]);
    }

    for (var i = (word.length - x); i < word.length; i++) {
      if (stack.pop() != word[i]) {
        return false;
      } else {
        result = true;
      }
    }

    return result;
  }

  void wordToStack(String word) {
    for (var i = 0; i < word.length; i++) {
      stack.push(word[i]);
    }
  }

  String wordReversed(String word) {
    wordToStack(word);
    return stack.stackReversed().join("");
  }
}

void main() {
  var palindrom = Palindrom();

  stdout.write("Masukkan kalimat : ");
  var word = stdin.readLineSync().toString();
  print("hasil : " + palindrom.wordReversed(word));

  if (palindrom.isPalindrom(word)) {
    print("palindrom");
  } else {
    print("bukan palindrom");
  }
}
