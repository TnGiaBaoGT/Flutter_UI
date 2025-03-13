import 'dart:ui';
import 'package:dashboard_tranking/model/graph_class.dart';

class BarGraphClass {
  final String label;
  final Color color;
  final List<GraphClass> graph;

  BarGraphClass({
    required this.color,
    required this.graph,
    required this.label,
});
}