void main() {
  generateSubsets([1, 2, 3]);
}

/// Backtracking
void generateSubsets(List<int> num) {
  List<int> res = [];

  final List<List<int>> myList = [];

  void backtrack(int index) {
    print(List.from(res));

    myList.add(List.from(res));

    for (int i = index; i < num.length; i++) {
      res.add(num[i]);
      backtrack(i + 1);
      res.removeLast();
    }
  }

  backtrack(0);

  print(myList);
}
