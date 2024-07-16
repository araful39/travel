import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel/navigation_menu.dart';

import '../screen/signin/signin.dart';

class SignInController extends GetxController{

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isTroggle = true.obs;

  troggle() {
    isTroggle.value = !isTroggle.value;
  }

  signInToNavigationMenu() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (emailController.text.isEmpty) {
      Get.snackbar("Please Fill up ", "Your Email", colorText: Colors.red);
      return;
    }

    if (!GetUtils.isEmail(emailController.text)) {
      Get.snackbar("Please Fill up", "Enter a valid Email",
          colorText: Colors.red);
      return;
    }

    String? password = passwordController.text.isEmpty
        ? "Password"
        : passwordController.text.length < 8
        ? "Password less than 8 characters"
        : null;
    if (password != null) {
      Get.snackbar("Please Fill up", password, colorText: Colors.red);
    }

    else {
      Get.offAll(
          const NavigationMenu());
      prefs.setBool("isLogin", true);

    }
  }



  signUpFacebook() {}

  signUpInstagram() {}

  signUpTwitter() {}
}