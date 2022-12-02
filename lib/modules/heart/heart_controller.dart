import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lovely_app/shared/shared.dart';

class HeartController extends GetxController {
  RxList<HeartModel> hearts = <HeartModel>[].obs;
  late HeartPoolModel pool;
  double heartSize = 10.0;
  double shapeSize = 200.0;
  int length = 60;
  double velocity = 3;
  double rate = 3;
  PointModel start = PointModel(90, 200);
  late DateTime _time;
  late Timer _timer;
  @override
  void onInit() {
    // TODO: implement onInit
    pool = HeartPoolModel(length);
    hearts.value = pool.renderHearts();
    _time = DateTime.now();
    _timer = Timer.periodic(Duration(milliseconds: 200), onTick);
    super.onInit();

  }

  void onTick(Timer timer) {
    tick();
  }
  double time() {
    var now = DateTime.now();
    var deltaTime = now.difference(_time);
    _time = now;
    return deltaTime.inMilliseconds / 1000.0;
  }
  void tick() {
    var delta = time();
    var amount = rate * delta;
    for (var i = 0; i < amount; i++) {
      var pos = HeartUtils.pointOnHeart(pi - 2 * pi * Random().nextInt(1));
      var clone = pos.clone();
          // clone.setLength(velocity);
      pool.add(300 + pos.x, 300 / 2 - pos.y, clone.x, -clone.y);
    }
    pool.update(delta);
  }

  List<Offset> getPointsOnHeart() {
    var offsets = List<Offset>.empty(growable: true);
    double t = -pi;
    var point = HeartUtils.to(shapeSize, t);
    // offsets.add(Offset(point.dx + start.x, point.dy + start.value.dy));
    // while (t < pi) {
    //   t += 0.01; // baby steps!
    //   var point = HeartUtils.to(shapeSize.value, t);
    //   offsets.add(Offset(point.dx + start.value.dx, point.dy + start.value.dy));
    // }
    return offsets;
  }

  @override
  void onClose() {
    // TODO: implement onClose
    hearts.clear();
    _timer.cancel();
    super.onClose();
  }
}