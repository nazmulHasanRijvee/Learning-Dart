// monotonic stack. A monotonic stack is a stack that maintains its elements
// in either increasing or decreasing order. It pops the elements that violate order
void monotonicStack(List<int> stack) {
  print('Original Stack: $stack');

  List<int> tempStack = [];

  for (int num in stack) {
    /// If tempStack is not empty it will compare the last element of tempStack
    /// with the current num from stack
    if (tempStack.isNotEmpty) {
      while (tempStack.isNotEmpty) {
        // if the last element of tempStack is greater than num it will pop the last element
        if (tempStack.last > num) {
          tempStack.removeLast();
        } else {
          break;
        }
      }
      // finally it will add the current num to tempStack
      tempStack.add(num);
    }
    /// if tempStack is empty it will add the first element from stack
    else {
      tempStack.add(num);
    }
  }

  stack = [...tempStack];
  print('Monotonic Stack: $stack');
}

void main() {
  /// Last in first out LIFO
  List<int> stack = [];

  // Push operation
  stack.add(1);
  stack.add(2);
  stack.add(3);
  print('Stack after pushes: $stack');

  // Pop operation
  int poppedValue = stack.removeLast();
  print('Popped value: $poppedValue');
  print('Stack after pop: $stack');

  // Peek operation
  int peekValue = stack.last;
  print('Peek value: $peekValue');
  print('Stack after peek: $stack');

  /// First in first out FIFO
  List<int> queue = [];
  // Enqueue operation
  queue.add(1);
  queue.add(2);
  queue.add(3);
  print('Queue after enqueues: $queue');
  // Dequeue operation
  int dequeuedValue = queue.removeAt(0);
  print('Dequeued value: $dequeuedValue');
  print('Queue after dequeue: $queue');

  // Peek operation
  print('Queue peek value: ${queue.first}');

  // Monotonic stack
  List<int> stack2 = [1, 7, 9, 5];
  monotonicStack(stack2);
}
