import 'dart:ui';

import 'package:dashboard_tranking/model/bar_graph_class.dart';
import 'package:dashboard_tranking/model/graph_class.dart';

class BarGraphData{
  final barGraphData = <BarGraphClass>[
    BarGraphClass(
        color: const Color(0xFFFEB95A),
        graph: [
          GraphClass(x: 0 , y: 4),
          GraphClass(x: 1 , y: 9),
          GraphClass(x: 2 , y: 2),
          GraphClass(x: 3 , y: 5),
          GraphClass(x: 4 , y: 6),
          GraphClass(x: 5 , y: 7),
        ],
        label: 'Activity Level'),

    BarGraphClass(
        color: const Color(0xFFF2C8ED),
        graph: [
          GraphClass(x: 0 , y: 4),
          GraphClass(x: 1 , y: 9),
          GraphClass(x: 2 , y: 2),
          GraphClass(x: 3 , y: 5),
          GraphClass(x: 4 , y: 6),
          GraphClass(x: 5 , y: 7),
        ],
        label: 'Nutrition'),

    BarGraphClass(
        color: const Color(0xFF20AEF3),
        graph: [
          GraphClass(x: 0 , y: 4),
          GraphClass(x: 1 , y: 9),
          GraphClass(x: 2 , y: 2),
          GraphClass(x: 3 , y: 5),
          GraphClass(x: 4 , y: 6),
          GraphClass(x: 5 , y: 7),
        ],
        label: 'Hydration Level'),
  ];

  final label = ['M','T','W','T','F','S'];
}