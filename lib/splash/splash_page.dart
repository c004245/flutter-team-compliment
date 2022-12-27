import 'package:flutter_team_compliment/splash/splash_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_team_compliment/common/app_routes.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text(
            "스플래시 -> 로그인",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
          ),
          onPressed: () {
            Get.offAllNamed(AppRoutes.login);
          },
        ),
      )
    );
  }
}