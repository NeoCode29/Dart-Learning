void main() {
  var inventorySystem = InventorySystem();
  // Menambah stok barang
  inventorySystem.addCategory('Elektronik');
  inventorySystem.addCategory('Pakaian');

  inventorySystem.addStock('Elektronik', 'Laptop', 50);
  inventorySystem.addStock('Pakaian', 'Kaos', 100);
  // Mengurangi stok barang
  inventorySystem.removeStock('Elektronik', 'Laptop', 10);
  inventorySystem.removeStock('Pakaian', 'Kaos', 30);
  // Menampilkan stok barang
  inventorySystem.displayInventory();
}

class Item {
  String name;
  int quantity;
  Item(this.name, this.quantity);
}

class Node {
  String category;
  List<Item> items;
  Node? next;
  Node(this.category) : items = [];
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

class InventorySystem {
  Node? head;
  Queue outQueue = Queue();
  void addCategory(String category) {
    var newNode = Node(category);
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

  void addStock(String category, String itemName, int quantity) {
    var categoryNode = findCategory(category);
    if (categoryNode != null) {
      var item = categoryNode.items.firstWhere((item) => item.name == itemName,
          orElse: () => Item(itemName, 0));
      if (!categoryNode.items.contains(item)) {
        categoryNode.items.add(item);
      }
      item.quantity += quantity;
    } else {
      print('Kategori tidak ditemukan');
    }
  }

  void removeStock(String category, String itemName, int quantity) {
    var categoryNode = findCategory(category);
    if (categoryNode != null) {
      var item = categoryNode.items.firstWhere((item) => item.name == itemName,
          orElse: () => Item(itemName, 0));
      if (categoryNode.items.contains(item)) {
        item.quantity -= quantity;
        outQueue.enqueue(Item(itemName, quantity));
      } else {
        print('Item tidak ditemukan');
      }
    } else {
      print('Kategori tidak ditemukan');
    }
  }

  Node? findCategory(String category) {
    var current = head;
    while (current != null) {
      if (current.category == category) {
        return current;
      }
      current = current.next;
    }
    return null;
  }

  void displayInventory() {
    var current = head;
    while (current != null) {
      print('Kategori: ${current.category}');
      for (var item in current.items) {
        print(' ${item.name}: ${item.quantity}');
      }
      current = current.next;
    }
    print('\nBarang yang keluar:');
    var outCurrent = outQueue.front;
    while (outCurrent != null) {
      print(' ${outCurrent.value.name}: ${outCurrent.value.quantity}');
      outCurrent = outCurrent.next;
    }
  }
}
