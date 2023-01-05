import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(),
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: [
                      SignInButton(Buttons.Google,
                      onPressed: () {
                        controller.signInWithGoogle()
                      },
                      ),
                      // Text(
                      //   "칭찬앱",
                      //   style: TextStyle(
                      //       color: Colors.deepOrangeAccent,
                      //       fontWeight: FontWeight.bold,
                      //       fontSize: 40),
                      // ),
                    ],
                  )
    )
    )
    )

  }
}
