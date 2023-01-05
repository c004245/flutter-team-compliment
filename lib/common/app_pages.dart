import 'package:flutter_team_compliment/login/login_binding.dart';
import 'package:flutter_team_compliment/login/login_controller.dart';
import 'package:flutter_team_compliment/login/login_page.dart';

import 'app_routes.dart';

import 'package:flutter_team_compliment/splash/splash_page.dart';
import 'package:flutter_team_compliment/splash/splash_binding.dart';
import 'package:flutter_team_compliment/main_list/main_list_page.dart';
import 'package:flutter_team_compliment/main_list/main_list_binding.dart';
import 'package:get/get.dart';

class AppPages {
  static var list = [
    GetPage(
        name: AppRoutes.splash,
        page: () => const SplashPage(),
        binding: SplashBinding()),
    GetPage(
        name: AppRoutes.login,
        page: () => const LoginPage(),
        binding: LoginBinding()),
    GetPage(
        name: AppRoutes.mainList,
        page: () => const MainListPage(),
        binding: MainListBinding())
  ];
}
