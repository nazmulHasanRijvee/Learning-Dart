import 'dart:collection';

/// Binary Tree
class BinaryTreeNode<T> {
  T value;
  BinaryTreeNode<T>? left;
  BinaryTreeNode<T>? right;

  BinaryTreeNode(this.value);
}

/// Pre-order
// root -> left -> right
void preOrder(BinaryTreeNode? node) {
  if (node == null) return;

  print(node.value);

  preOrder(node.left); // recursion
  preOrder(node.right);
}

/// In-order
// left -> root -> right
void inOrder(BinaryTreeNode? node) {
  if (node == null) return;

  inOrder(node.left);
  print(node.value);
  inOrder(node.right);
}

/// Post-order
// left -> right -> root
void postOrder(BinaryTreeNode? node) {
  if (node == null) return;

  postOrder(node.left);
  postOrder(node.right);
  print(node.value);
}

///
void levelOrder(BinaryTreeNode? root) {
  if (root == null) return;

  Queue queue = Queue();

  queue.add(root);

  while (queue.isNotEmpty) {
    BinaryTreeNode node = queue.removeFirst();
    print(node.value);
    if (node.left != null) queue.add(node.left);
    if (node.right != null) queue.add(node.right);
  }
}

void main() {
  /// Creating nodes
  BinaryTreeNode<int> root = BinaryTreeNode(1);
  BinaryTreeNode<int> two = BinaryTreeNode(2);
  BinaryTreeNode<int> three = BinaryTreeNode(3);
  BinaryTreeNode<int> four = BinaryTreeNode(4);
  BinaryTreeNode<int> five = BinaryTreeNode(5);

  /// Building the tree
  //       1
  //      / \
  //     2   3
  //    / \
  //   4   5
  root.left = two;
  root.right = three;
  two.left = four;
  two.right = five;

  print('Pre-order:');
  preOrder(root);

  print('\nIn-order:');
  inOrder(root);

  print('\nPost-order:');
  postOrder(root);

  print('\nLevel-order:');
  levelOrder(root);
}
