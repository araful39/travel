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

  signUpToNavigationMenu(String name, String email, String password) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (name.toString().isEmpty) {
      Get.snackbar("Please Fill up ", "Your Name", colorText: Colors.red);
      return true;
    }

    if (email.toString().isEmpty) {
      Get.snackbar("Please Fill up ", "Your Email", colorText: Colors.red);
      return;
    }

    if (!GetUtils.isEmail(email.toString())) {
      Get.snackbar("Please Fill up", "Enter a valid Email",
          colorText: Colors.red);
      return;
    }

    String? pass = password.toString().isEmpty
        ? "Password"
        : passwordController.text.length < 6
            ? "Password less than 8 characters"
            : null;
    if (pass != null) {
      Get.snackbar("Please Fill up", pass, colorText: Colors.red);
    } else {
      Get.offAll(const NavigationMenu());
      prefs.setBool("isLogin", true).obs;
      prefs.setString("name", name.toString());
      prefs.setString("email", email.toString());
      prefs.setString("password", password.toString());
    }
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  getToSignIn() {
    Get.to(() => const SignIn());
  }

  signUpFacebook() {}

  signUpInstagram() {}

  signUpTwitter() {}
}
