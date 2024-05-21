class Stack {
  // atribute _item digunakan untuk menyimpan stack
  List<String> _items = [];
  // atribute length untuke mengembalikan panjang stack
  int length = 0;

  Stack() {
    this.length = _items.length;
  }

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

class NotationConversion {
  Stack stackOperator = Stack();
  Stack stackExpression = Stack();

  String infixToPostfix(String expression) {
    String result = "";
    expression = expression.replaceAll(" ", "");
    for (var element in expression.split("")) {
      if (isOperator(element)) {
        if (element == ")") {
          while (stackOperator.top() != "(") {
            result += stackOperator.pop();
          }
          stackOperator.pop();
        } else {
          stackOperator.push(element);
        }
      } else {
        result += element;
      }
    }

    if (!stackOperator.isEmpty()) {
      while (!stackOperator.isEmpty()) {
        result += stackOperator.pop();
      }
    }
    return result;
  }

  String postfixToInfix(String expression) {
    String result = "";

    for (var element in expression.split("")) {
      print(stackExpression._items);
      if (isOperator(element)) {
        String op2 = encloseBrackets(stackExpression.pop());
        String op1 = encloseBrackets(stackExpression.pop());
        result = "$op1 $element $op2";
        stackExpression.push(result);
      } else {
        stackExpression.push(element);
      }
    }
    return result;
  }

  String encloseBrackets(String expression) {
    if (expression.length > 1) {
      return "($expression)";
    } else {
      return expression;
    }
  }

  bool isOperator(String element) {
    switch (element) {
      case "+":
      case "-":
      case "*":
      case "/":
      case "^":
      case "%":
      case "(":
      case ")":
        return true;
      default:
        return false;
    }
  }
}

void main() {
  var notasi = NotationConversion();
  var infix = "(A * B) + C^5";
  var result = notasi.infixToPostfix(infix);
  var result2 = notasi.postfixToInfix(result);

  print(result2);
}
