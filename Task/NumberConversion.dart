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

  // method untuk menghapus semua element di stack
  void clear() {
    if (isEmpty()) {
      throw Exception('Stack is empty');
    }
    return _items.clear();
  }

  // method untuk membalikkan element di stack
  List reverse() {
    if (isEmpty()) {
      throw Exception('Stack is empty');
    } else {
      return _items.reversed.toList();
    }
  }
}

class Decimal {
  var stack = Stack();

  String toBiner(int decimal) {
    while (decimal != 0) {
      stack.push((decimal % 2).toString());
      decimal = (decimal / 2).floor();
    }
    String result = stack.reverse().join("");
    stack.clear();
    return result;
  }

  String toOctal(int decimal) {
    while (decimal != 0) {
      stack.push((decimal % 8).toString());
      decimal = (decimal / 8).floor();
    }
    String result = stack.reverse().join("");
    stack.clear();
    return result;
  }

  String toHexadecimal(int decimal) {
    while (decimal != 0) {
      switch (decimal % 16) {
        case 10:
          stack.push('A');
          break;
        case 11:
          stack.push("B");
          break;
        case 12:
          stack.push("C");
          break;
        case 13:
          stack.push("D");
          break;
        case 14:
          stack.push("E");
          break;
        case 15:
          stack.push("F");
          break;
        default:
          stack.push((decimal % 16).toString());
      }
      decimal = (decimal / 16).floor();
    }
    String result = stack.reverse().join("");
    stack.clear();
    return result;
  }
}

void main(List<String> args) {
  stdout.write("Masukkan angka desimal : ");
  int inputUser = int.parse(stdin.readLineSync().toString());
  Decimal desimal = Decimal();

  print("Hasil nilai biner ${desimal.toBiner(inputUser)}");
  print("Hasil nilai octal ${desimal.toOctal(inputUser)}");
  print("Hasil nilai hexadesimal ${desimal.toHexadecimal(inputUser)}");
}
