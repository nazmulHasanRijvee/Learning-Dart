import 'dart:collection';

class TreeNode<T> {
  final T value;
  List<TreeNode<T>> children = [];
  TreeNode(this.value);

  void addChild({TreeNode<T>? child, List<TreeNode<T>>? children}) {
    if (child != null) this.children.add(child);
    if (children != null) this.children.addAll(children);
  }
}

/// Level wise traversal BFS
void bfs(TreeNode root) {
  /// Importing queue from dart collection
  Queue queue = Queue();
  queue.add(root);

  while (queue.isNotEmpty) {
    TreeNode node = queue.removeFirst();
    print(node.value);

    for (TreeNode child in node.children) {
      queue.add(child);
    }
  }
}

/// Depth Wise Traversal DFS (Depth First Search)
void dfs(TreeNode node) {
  print(node.value);

  for (var child in node.children) {
    dfs(child); // recursive call
  }
}

void main() {
  /// Creating nodes
  TreeNode<int> root = TreeNode(2);
  TreeNode<int> three = TreeNode(3);
  TreeNode<int> four = TreeNode(4);
  TreeNode<int> one = TreeNode<int>(1);
  TreeNode<int> ten = TreeNode<int>(10);
  TreeNode<int> seven = TreeNode<int>(7);
  TreeNode<int> five = TreeNode<int>(5);

  /// Adding children to the root node
  root.addChild(child: three);
  root.addChild(child: four);
  root.addChild(child: one);

  // adding sub children
  three.addChild(child: seven);

  four.addChild(child: ten);
  four.addChild(child: five);

  print('done\n\nBFS:');

  bfs(root);
  print('\n\nDFS:');
  dfs(root);
}
