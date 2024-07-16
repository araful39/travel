import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel/features/authentication/screen/signin/signin.dart';

class OtpController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  newPasswordToLogIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (passwordController.text.isEmpty) {
      Get.snackbar("Please Fill up ", "Set a password", colorText: Colors.red);
      return;
    }

    String? password = passwordController.text.isEmpty
        ? "Password"
        : passwordController.text.length < 6
            ? "Password less than 8 characters"
            : null;
    if (password != null) {
      Get.snackbar("Please Fill up", password, colorText: Colors.red);
    } else {
      Get.offAll(const SignIn());
      prefs.setString("password", passwordController.text).obs;
      update();
      passwordController.clear();
    }
  }
}
