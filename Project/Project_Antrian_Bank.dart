import 'dart:async';
import 'dart:collection';

class Customer {
  final String name;
  Customer(this.name);
  @override
  String toString() {
    return name;
  }
}

class BankQueue {
  final Queue<Customer> queue = Queue<Customer>();
  void addCustomer(Customer customer) {
    queue.add(customer);
    print('${customer.name} added to the queue.');
  }

  Customer serveCustomer() {
    if (queue.isNotEmpty) {
      return queue.removeFirst();
    } else {
      print('No customers in the queue.');
      return Customer("");
    }
  }

  bool get isEmpty => queue.isEmpty;
  @override
  String toString() {
    return queue.toString();
  }
}

class Teller {
  final String name;
  final BankQueue queue;
  Teller(this.name, this.queue);
  void serveCustomers() {
    Timer.periodic(Duration(seconds: 2), (timer) {
      if (queue.isEmpty) {
        print('$name: No customers to serve. Stopping.');
        timer.cancel();
      } else {
        Customer customer = queue.serveCustomer();
        if (customer != null) {
          print('$name is serving ${customer.name}');
        }
      }
    });
  }
}

void main() {
// Create multiple queues
  BankQueue queue1 = BankQueue();
  BankQueue queue2 = BankQueue();
  BankQueue queue3 = BankQueue();
// Add customers to the queues
  queue1.addCustomer(Customer('Alice'));
  queue1.addCustomer(Customer('Bob'));
  queue2.addCustomer(Customer('Charlie'));
  queue2.addCustomer(Customer('David'));
  queue3.addCustomer(Customer('Eve'));
  queue3.addCustomer(Customer('Frank'));
// Create tellers and assign them to queues
  Teller teller1 = Teller('Teller 1', queue1);
  Teller teller2 = Teller('Teller 2', queue2);
  Teller teller3 = Teller('Teller 3', queue3);
// Start serving customers

  teller1.serveCustomers();
  teller2.serveCustomers();
  teller3.serveCustomers();
// Adding more customers to the queues dynamically
  Timer(Duration(seconds: 5), () {
    queue1.addCustomer(Customer('Grace'));
    queue2.addCustomer(Customer('Hank'));
    queue3.addCustomer(Customer('Ivy'));
  });
// Stop the simulation after a certain time
  Timer(Duration(seconds: 20), () {
    print('Stopping the simulation.');
  });
}
