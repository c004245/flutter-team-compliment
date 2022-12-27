import 'package:get/get.dart';
import 'package:flutter_team_compliment/splash/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      SplashController(

      )
    );
  }
}