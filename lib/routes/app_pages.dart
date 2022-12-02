import 'package:get/get.dart';
import 'package:lovely_app/modules/heart/heart.dart';
import 'package:lovely_app/modules/home/home.dart';
import 'package:lovely_app/modules/splash/splash.dart';
import 'package:lovely_app/modules/webview/webview.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding()
    ),
    GetPage(
      name: Routes.HEART,
      page: () => HeartScreen(),
      binding: HeartBinding(),
    ),
    GetPage(
      name: Routes.WEB_VIEW,
      page: () => WebviewScreen(),
      binding: WebviewBinding(),
    )
  ];
}
