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

class Inventory {
  List<Item> items = [];
  void addStock(String name, int quantity) {
    var item = items.firstWhere((item) => item.name == name,
        orElse: () => Item(name, 0));
    if (!items.contains(item)) {
      items.add(item);
    }
    item.quantity += quantity;
  }

  void removeStock(String name, int quantity) {
    var item = items.firstWhere((item) => item.name == name,
        orElse: () => Item(name, 0));
    if (items.contains(item)) {
      item.quantity -= quantity;
    } else {
      print('Item tidak ditemukan');
    }
  }

  void displayStock() {
    for (var item in items) {
      print('${item.name}: ${item.quantity}');
    }
  }
}

class Item {
  String name;
  int quantity;
  Item(this.name, this.quantity);
}
