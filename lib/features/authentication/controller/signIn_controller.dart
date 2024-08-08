import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel/navigation_menu.dart';

class SignInController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isTroggle = true.obs;

  troggle() {
    isTroggle.value = !isTroggle.value;
  }

  signInToNavigationMenu(String email,String password) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? emailS = prefs.getString("email");
    String? passwordS = prefs.getString("password");
    if (email.toString().isEmpty) {
      Get.snackbar("Please Fill up ", "Your Email", colorText: Colors.red);
      return;
    }

    if (!GetUtils.isEmail(email.toString())) {
      Get.snackbar("Please Fill up", "Enter a valid Email",
          colorText: Colors.red);
      return;
    }

    if (emailS != email.toString()) {
      Get.snackbar("Please Fill up", "Enter a Correct Email or Registration",
          colorText: Colors.red);
      return;
    }

    String? pass = passwordS != password
        ? "Correct Password"
        : passwordController.text.length < 8
            ? "Password less than 8 characters"
            : null;
    if (pass != null) {
      Get.snackbar("Please Fill up", pass, colorText: Colors.red);
    } else {
      Get.offAll(const NavigationMenu());
      prefs.setBool("isLogin", true).obs;
      update();
      emailController.clear();
      passwordController.clear();
    }
  }

  signUpFacebook() {}

  signUpInstagram() {}

  signUpTwitter() {}
}
