import 'package:get/get.dart';
import './heart_controller.dart';

class HeartBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HeartController>(HeartController());
  }

}