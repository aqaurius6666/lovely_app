import 'package:flutter/material.dart';
import 'package:lovely_app/shared/shared.dart';
import './heart_controller.dart';
import 'package:get/get.dart';

class HeartScreen extends StatelessWidget {
  HeartController heartController = Get.put(HeartController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Stack(
        children: heartController.hearts
            .map((heart) => HeartWidget(position: heart.position, size: heartController.heartSize))
            .toList(),
      );
    });
  }
}
