import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lovely_app/shared/shared.dart';

class HeartPainter extends CustomPainter {
  double size;
  Color color;
  HeartPainter({this.size = 30, this.color = Colors.pinkAccent});
  @override
  void paint(Canvas canvas, Size _size) {
    // TODO: implement paint
    var paint = Paint()
      ..strokeWidth = 10
      ..color = color;
    var path = Path();
    double t = -pi;
    var point = HeartUtils.to(size, t);
    path.moveTo(point.x, point.y);
    while (t < pi) {
      t += 0.01; // baby steps!
      var point = HeartUtils.to(size, t);
      path.lineTo(point.x, point.y);
    }
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
