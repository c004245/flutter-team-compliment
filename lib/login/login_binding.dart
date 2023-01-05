import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_team_compliment/data/service/authentication_service.dart';
import 'package:flutter_team_compliment/login/login_controller.dart';
import 'package:flutter_team_compliment/provider/firebase_authentication_provider.dart';
import 'package:flutter_team_compliment/repository/authentication_repository.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
        () => LoginController(
          AuthenticationService(
            AuthenticationRepository(
              FirebaseAuthenticationProvider(
                FirebaseAuth.instance,
                GoogleSignIn(),
              ),

            )
          )
        )

    );
  }
}