class GraphList<T> {
  Map<T, List<T>> adjList = {};

  void addEdge(T src, T dst) {
    adjList.putIfAbsent(src, () => []);
    adjList.putIfAbsent(dst, () => []);

    adjList[src]!.add(dst);
    adjList[dst]!.add(src); // remove this when directed graph
  }

  void printGraph() {
    adjList.forEach((key, dst) {
      print('$key --> $dst');
    });
  }
}

class GraphMatrix {
  late List<List<int>> matrix;
  int vertices;

  GraphMatrix(this.vertices) {
    matrix = List.generate(vertices, (_) => List.filled(vertices, 0));
  }

  void addEdge(int src, int dst) {
    matrix[src][dst] = 1;
    matrix[dst][src] = 1; // remove this when directed graph
  }
}

void main() {
  final GraphList<int> graph = GraphList<int>();

  graph.addEdge(2, 3);
  graph.addEdge(2, 6);
  graph.addEdge(3, 4);
  graph.addEdge(3, 8);
  graph.addEdge(7, 6);
  graph.addEdge(7, 8);
  graph.addEdge(4, 7);
  graph.addEdge(4, 9);

  graph.printGraph();
}
