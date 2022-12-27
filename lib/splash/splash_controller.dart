import 'package:get/get.dart';
import 'package:flutter_team_compliment/common/app_routes.dart';


class SplashController extends GetxController {

  SplashController();

  @override
  void onReady() {
    _initialScreen();
    super.onReady();
  }

  _initialScreen() {
    // Get.offNamed(AppRoutes.login);
  }
}