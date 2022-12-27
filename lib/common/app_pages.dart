import 'app_routes.dart';

import 'package:flutter_team_compliment/splash/splash_page.dart';
import 'package:flutter_team_compliment/splash/splash_binding.dart';
import 'package:get/get.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashPage(),
      binding: SplashBinding()
    )
  ];
}