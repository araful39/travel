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

  signInToNavigationMenu() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? email = prefs.getString("email");
    String? password = prefs.getString("password");
    if (emailController.text.isEmpty) {
      Get.snackbar("Please Fill up ", "Your Email", colorText: Colors.red);
      return;
    }

    if (!GetUtils.isEmail(emailController.text)) {
      Get.snackbar("Please Fill up", "Enter a valid Email",
          colorText: Colors.red);
      return;
    }

    if (email != emailController.text) {
      Get.snackbar("Please Fill up", "Enter a Correct Email or Registration",
          colorText: Colors.red);
      return;
    }

    String? pass = password != passwordController.text
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
