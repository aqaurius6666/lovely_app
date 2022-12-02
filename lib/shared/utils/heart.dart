import 'dart:math';

import 'package:lovely_app/shared/shared.dart';

class HeartUtils {
  static PointModel pointOnHeart(double t) {
    return PointModel(
        160.0 * pow(sin(t), 3),
        130.0 * cos(t) - 50.0 * cos(2.0 * t) - 20.0 * cos(3.0 * t) - 10.0 * cos(4.0 * t) + 25.0
    );
  }
  static PointModel to(double size, double t) {
    var point = pointOnHeart(t);
    var dx = size / 2.0 + point.x * size / 350.0;
    var dy = size / 2.0 - point.y * size / 350.0;
    return PointModel(dx, dy);
  }
}