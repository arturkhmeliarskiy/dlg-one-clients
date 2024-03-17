import 'dart:ui';

import 'package:dls_one/features/company_structure/model/department_node.dart';
import 'package:graphview/GraphView.dart';

class DepartmentGraphBuilder {
  final Graph graph = Graph()..isTree = true;

  void apply(DepartmentNode departmentNode) {
    graph.edges.clear();
    graph.nodes.clear();

    final node = departmentNode.makeNode();

    node.node.position = const Offset(100, 100);

    graph
      ..addNode(node.node)
      ..addEdges(node.makeEdges());
  }
}

extension on DepartmentNode {
  DepartmentGraphNode makeNode() {
    final childNodes = children.map((department) => department.makeNode());

    return DepartmentGraphNode(
      node: Node.Id(this),
      children: childNodes.toList(),
    );
  }
}

class DepartmentGraphNode {
  DepartmentGraphNode({
    required this.node,
    required this.children,
  });

  final Node node;
  final List<DepartmentGraphNode> children;

  List<Edge> makeEdges([List<Edge>? inputEdges]) {
    final edges = inputEdges ?? [];

    for (final child in children) {
      final edge = Edge(node, child.node);

      edges.add(edge);

      child.makeEdges(edges);
    }

    return edges;
  }
}
