import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel/features/authentication/screen/signin/signin.dart';
import 'package:travel/navigation_menu.dart';

class SignupController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isTroggle = true.obs;

  troggle() {
    isTroggle.value = !isTroggle.value;
  }

  signUpToNavigationMenu() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (nameController.text.isEmpty) {
      Get.snackbar("Please Fill up ", "Your Name", colorText: Colors.red);
      return;
    }

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
    } else {
      Get.offAll(const NavigationMenu());
      prefs.setBool("isLogin", true);
      prefs.setString("name", nameController.text);
      prefs.setString("email", emailController.text);
      prefs.setString("password", passwordController.text);
    }
  }

  getToSignIn() {
    Get.to(() => const SignIn());
  }

  signUpFacebook() {}

  signUpInstagram() {}

  signUpTwitter() {}
}
