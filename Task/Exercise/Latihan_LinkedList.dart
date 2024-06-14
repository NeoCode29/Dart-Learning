import 'dart:collection';

final class Node<T> extends LinkedListEntry<Node> {
  final T value;
  Node(this.value);
}

void main() {
  var ll = LinkedList<Node>();

  var n1 = Node("pisang");
  var n2 = Node("mangga");
  var n3 = Node("apel");

  ll.add(n1);
  ll.add(n2);
  ll.add(n3);

  ll.forEach((entry) {
    print(entry.value);
  });
}
