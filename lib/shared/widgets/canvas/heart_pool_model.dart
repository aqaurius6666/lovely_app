import 'package:flutter/cupertino.dart';
import 'package:lovely_app/shared/shared.dart';

class HeartPoolModel {
  late List<HeartModel> hearts;
  int firstActive = 0;
  int firstFree = 0;
  double duration = 300.0;
  int length = 0;
  double effect = 3;
  double heartSize = 20;

  HeartPoolModel(this.length) {
    hearts = List.filled(length, HeartModel.zero());
  }

  void add(double x, double y, double dx, double dy) {
    hearts[firstFree] = HeartModel.initialize(x, y, dx, dy, effect);
    firstFree++;
    if (firstFree == length) firstFree = 0;
    if (firstActive == firstFree) firstActive++;
    if (firstActive == length) firstActive = 0;
  }

  void update(double deltaTime) {
    var i = 0;
    // update active particles
    if (firstActive < firstFree) {
      for (i = firstActive; i < firstFree; i++) {
        hearts[i].update(deltaTime);
      }
    }
    if (firstFree < firstActive) {
      for (i = firstActive; i < length; i++) {
        hearts[i].update(deltaTime);
      }
      for (i = 0; i < firstFree; i++) {
        hearts[i].update(deltaTime);
      }
    }
    // remove inactive particles
    while (hearts[firstActive].age >= duration && firstActive != firstFree) {
      firstActive++;
      if (firstActive == length) firstActive = 0;
    }
  }

  List<HeartModel> renderHearts() {
    List<HeartModel> hearts = List.empty(growable: true);
    var i =0;
    if (firstActive < firstFree) {
      for (i = firstActive; i < firstFree; i++) {
        hearts.add(hearts[i]);
      }
    }
    if (firstFree < firstActive) {
      for (i = firstActive; i < length; i++) {
        hearts.add(hearts[i]);
      }
    }
    
    return hearts;
  }
}