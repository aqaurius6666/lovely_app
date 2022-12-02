import 'dart:math';

import 'package:flutter/material.dart';

class PointModel {
  double _x = 0;
  double _y = 0;
  PointModel(this._x, this._y);

  PointModel.zero() {
    _x = 0;
    _y = 0;
  }
  double get x => _x;
  double get y => _y;

  set x(double _x) {
    x= _x;
  }
  set y(double _y) {
    y = _y;
  }

  Offset toOffset() {
    return Offset(_x, _y);
  }

  PointModel clone() {
    return PointModel(_x, _y);
  }
  double length() {
      return sqrt(_x * _x + _y * _y);

  }
  void setLength(double len) {
    var tmplen = length();
    this.x = this.x / tmplen * len;
    this.y = this.y / tmplen * len;
  }
}