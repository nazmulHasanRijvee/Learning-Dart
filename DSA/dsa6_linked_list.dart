class Node<T> {
  Node({required this.value, this.next});
  final T value;
  Node<T>? next;

  @override
  String toString() {
    if (next == null) {
      return '$value';
    } else {
      return '$value -> ${next.toString()}';
    }
  }
}

class LinkedList<T> {
  Node<T>? head;
  Node<T>? tail;

  bool get isEmpty => head == null;

  /// Adding at the front
  void push(T value) {
    final newNode = Node(value: value);
    if (isEmpty) {
      head = newNode;
      tail = newNode;
      return;
    }

    newNode.next = head;
    head = newNode;
  }

  /// Adding at the last
  void append(T value) {
    if (isEmpty) {
      push(value);
    }
    final newNode = Node(value: value);
    tail?.next = newNode;
    tail = newNode;
  }

  /// Adding in between
  Node<T>? nodeAt(int index) {
    var currentNode = head;
    int currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }

    return currentNode;
  }

  Node<T>? insertAfter(Node<T> node, T value) {
    if (node == tail) {
      append(value);
      return tail!;
    }

    final newNode = Node(value: value);
    newNode.next = node.next;
    node.next = newNode;
    return node.next;
  }

  /// remove from front
  T? pop() {
    final value = head?.value;
    head = head?.next;
    if (isEmpty) tail = null;
    return value;
  }

  /// remove from the end
  T? removeLast() {
    if (head?.next == null) return pop();

    var currentNode = head;

    while (currentNode!.next != tail) {
      currentNode = currentNode.next;
    }

    final value = tail?.value;
    tail = currentNode;
    tail?.next = null;

    return value;
  }

  /// remove in between
  T? removeAfter(Node<T> node) {
    final nodeToRemove = node.next;
    final value = nodeToRemove?.value;
    if (nodeToRemove == tail) {
      tail = node;
    }
    node.next = nodeToRemove?.next;
    return value;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty Linked List';
    return head.toString();
  }
}

void main() {
  final LinkedList<int> linkedList = LinkedList<int>();

  linkedList.push(2);
  linkedList.push(3);
  linkedList.push(4);
  linkedList.append(12);
  linkedList.append(8);

  print(linkedList);

  var node = linkedList.nodeAt(1)!;

  linkedList.insertAfter(node, 7);

  print(linkedList);

  int? poppedItem = linkedList.pop();

  print('$linkedList and popped item: $poppedItem');

  linkedList.removeLast();

  print(linkedList);

  var nodeToRemove = linkedList.nodeAt(1)!;
  linkedList.removeAfter(nodeToRemove);
  print(linkedList);
}
