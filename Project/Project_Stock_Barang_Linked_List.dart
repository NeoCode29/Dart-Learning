void main() {
  var inventory = Inventory();
  // Menambah stok barang
  inventory.addStock('Item1', 100);
  inventory.addStock('Item2', 200);
  // Mengurangi stok barang
  inventory.removeStock('Item1', 50);
  // Menampilkan stok barang
  inventory.displayStock();
}

class Node {
  Item value;
  Node? next;
  Node(this.value);
}

class Inventory {
  Node? head;
  void addStock(String name, int quantity) {
    var item = findItem(name);
    if (item != null) {
      item.quantity += quantity;
    } else {
      var newItem = Item(name, quantity);
      var newNode = Node(newItem);
      if (head == null) {
        head = newNode;
      } else {
        var current = head;
        while (current?.next != null) {
          current = current?.next;
        }
        current?.next = newNode;
      }
    }
  }

  void removeStock(String name, int quantity) {
    var item = findItem(name);
    if (item != null) {
      item.quantity -= quantity;
    } else {
      print('Item tidak ditemukan');
    }
  }

  Item? findItem(String name) {
    var current = head;
    while (current != null) {
      if (current.value.name == name) {
        return current.value;
      }
      current = current.next;
    }
    return null;
  }

  void displayStock() {
    var current = head;
    while (current != null) {
      print('${current.value.name}: ${current.value.quantity}');
      current = current.next;
    }
  }
}

class Item {
  String name;
  int quantity;
  Item(this.name, this.quantity);
}
