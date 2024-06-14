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

class Item {
  String name;
  int quantity;
  Item(this.name, this.quantity);
}

class QueueNode {
  Item value;
  QueueNode? next;
  QueueNode(this.value);
}

class Queue {
  QueueNode? front;
  QueueNode? rear;
  bool isEmpty() {
    return front == null;
  }

  void enqueue(Item value) {
    var newNode = QueueNode(value);
    if (isEmpty()) {
      front = rear = newNode;
    } else {
      rear?.next = newNode;
      rear = newNode;
    }
  }

  Item? dequeue() {
    if (isEmpty()) {
      print('Queue kosong');
      return null;
    } else {
      var temp = front;
      front = front?.next;
      if (front == null) {
        rear = null;
      }
      return temp?.value;
    }
  }
}

class Inventory {
  Queue stockQueue = Queue();
  void addStock(String name, int quantity) {
    var item = findItem(name);
    if (item != null) {
      item.quantity += quantity;
    } else {
      var newItem = Item(name, quantity);
      stockQueue.enqueue(newItem);
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
    var current = stockQueue.front;
    while (current != null) {
      if (current.value.name == name) {
        return current.value;
      }
      current = current.next;
    }
    return null;
  }

  void displayStock() {
    var current = stockQueue.front;
    while (current != null) {
      print('${current.value.name}: ${current.value.quantity}');
      current = current.next;
    }
  }
}
