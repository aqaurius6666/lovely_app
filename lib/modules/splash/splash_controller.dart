import 'package:get/get.dart';
import 'package:lovely_app/routes/routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    super.onReady();

    await Future.delayed(Duration(milliseconds: 2000));

    Get.toNamed(Routes.WEB_VIEW);
  }
}
