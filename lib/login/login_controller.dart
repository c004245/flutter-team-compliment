import 'package:get/get.dart';

import 'package:flutter_team_compliment/common/app_routes.dart';
import 'package:flutter_team_compliment/data/service/authentication_service.dart';

class LoginController extends GetxController {

  final AuthenticationService _authenticationService;


  LoginController(this._authenticationService);

  void signInWithGoogle() {
    _authenticationService
      .signInWithGoogle()
        .then((uid) => _signInComplete(uid))
        .onError((error, stackTrace) => _signInOnError(error, stackTrace));
  }

  void _signInComplete(String? uid) {
    uid != null
        ? Get.offAllNamed(AppRoutes.mainList)
        : Get.offAll(AppRoutes.login);
  }

  void _signInOnError(Object? error, StackTrace stackTrace) {
    print("signInOnError -> $error");
    print("signInOnError -> $stackTrace");
    //내부데이터를 제거하고 로그인 화면으로넘긴다..
  }

}