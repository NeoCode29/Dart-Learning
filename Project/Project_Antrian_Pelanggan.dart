import 'dart:collection';

class Customer {
  final String name;
  Customer(this.name);
  @override
  String toString() {
    return name;
  }
}

class CustomerQueue {
  final Queue<Customer> queue = Queue<Customer>();
  void addCustomer(String name) {
    queue.add(Customer(name));
    print('$name has been added to the queue.');
  }

  void serveCustomer() {
    if (queue.isNotEmpty) {
      Customer servedCustomer = queue.removeFirst();
      print('$servedCustomer has been served.');
    } else {
      print('No customers in the queue.');
    }
  }

  void displayQueue() {
    if (queue.isEmpty) {
      print('The queue is empty.');
    } else {
      print('Customers in queue: ${queue.join(', ')}');
    }
  }
}

void main() {
  CustomerQueue customerQueue = CustomerQueue();
// Menambahkan pelanggan ke antrian
  customerQueue.addCustomer('Alice');
  customerQueue.addCustomer('Bob');
  customerQueue.addCustomer('Charlie');
// Menampilkan status antrian
  customerQueue.displayQueue();
  print('---');
// Melayani pelanggan
  customerQueue.serveCustomer();
  customerQueue.displayQueue();
  print('---');
// Menambahkan lebih banyak pelanggan
  customerQueue.addCustomer('David');
  customerQueue.addCustomer('Eve');
  customerQueue.displayQueue();
  print('---');
// Melayani lebih banyak pelanggan
  customerQueue.serveCustomer();
  customerQueue.serveCustomer();
  customerQueue.displayQueue();

  print('---');
}
