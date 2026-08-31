class Stack<T> {
  final List<T> _elements = [];

  void push(T element) {
    _elements.add(element);
  }

  T pop() {
    if (_elements.isEmpty) {
      throw Exception('Stack is empty');
    }
    return _elements.removeLast();
  }

  T peek() {
    if (_elements.isEmpty) {
      throw Exception('Stack is empty');
    }
    return _elements.last;
  }

  bool get isEmpty => _elements.isEmpty;
  bool get isNotEmpty => _elements.isNotEmpty;
  int get size => _elements.length;

  void clear() {
    _elements.clear();
  }

  @override
  String toString() {
    return '----------Top----------\n'
        '${_elements.reversed.join('\n')}\n'
        '------------bottom---------';
  }
}

class Queue<T> {
  final List<T> _elements = [];

  void enqueue(T value) {
    _elements.add(value);
  }

  T dequeue() {
    if (_elements.isEmpty) {
      throw Exception('The queue is empty.');
    }
    return _elements.removeAt(0);
  }

  void clear() {
    _elements.clear();
  }

  @override
  String toString() {
    return '$_elements';
  }

  bool get isEmpty => _elements.isEmpty;
  bool get isNotEmpty => _elements.isNotEmpty;
}

void main() {
  //Stack<int> stack = Stack();
  // stack.push(10);
  // stack.push(5);
  // stack.push(12);
  // stack.push(15);
  // print(stack);
  // int poppedItem = stack.pop();
  // print('Popped item: $poppedItem');
  // print('Top item: ${stack.peek()}');

  // ignore: unused_element
  bool checkBalance(String expr) {
    Stack<String> stack = Stack();
    for (var ch in expr.split('')) {
      if (ch == '(') {
        stack.push(ch);
      } else if (ch == ')') {
        if (stack.isEmpty) return false;
        stack.pop();
      }
    }
    return stack.isEmpty;
  }

  // (a+b) + (c+d) // balanced
  // (a+b) + (c*d)) // unbalanced
  // ((a*b) + (c*d)) // balanced

  // bool isBalanced = checkBalance('((a*b)+(c*d))');
  //
  // print('The expression is balanced: $isBalanced');

  final queue = Queue<int>();
  queue.enqueue(5);
  queue.enqueue(12);
  queue.enqueue(2);
  queue.enqueue(7);
  print(queue);
  queue.dequeue();
  print(queue);
}
