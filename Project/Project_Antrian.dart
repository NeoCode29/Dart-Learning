void main() {
  // Membuat instance Queue
  var purchaseQueue = Queue();
  // Menambahkan beberapa pembelian ke antrian
  purchaseQueue.enqueue('Pembelian 1');
  purchaseQueue.enqueue('Pembelian 2');
  purchaseQueue.enqueue('Pembelian 3');
  // Menampilkan isi antrian
  print('Isi antrian:');
  purchaseQueue.display();
  // Memproses pembelian
  print('\nMemproses pembelian:');
  while (!purchaseQueue.isEmpty()) {
    var processedItem = purchaseQueue.dequeue();
    print('Memproses $processedItem');
  }
  // Menampilkan isi antrian setelah pemrosesan
  print('\nIsi antrian setelah pemrosesan:');
  purchaseQueue.display();
}

class Node {
  String value;
  Node? next;
  Node(this.value);
}

class Queue {
  Node? front;
  Node? rear;
  bool isEmpty() {
    return front == null;
  }

  void enqueue(String value) {
    var newNode = Node(value);
    if (isEmpty()) {
      front = rear = newNode;
    } else {
      rear?.next = newNode;
      rear = newNode;
    }
  }

  String? dequeue() {
    if (isEmpty()) {
      print('Antrian kosong');
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

  void display() {
    if (isEmpty()) {
      print('Antrian kosong');
      return;
    }

    var current = front;

    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}
