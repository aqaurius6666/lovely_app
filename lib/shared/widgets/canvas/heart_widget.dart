import 'package:flutter/material.dart';
import 'package:lovely_app/shared/shared.dart';
import './heart_painter.dart';

class HeartWidget extends StatelessWidget {
  PointModel position;
  double size;
  HeartWidget({required this.position, required this.size});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: position.x,
      top: position.y,
      child: CustomPaint(
        painter: HeartPainter(size: size),
      )
    );
  }
}
