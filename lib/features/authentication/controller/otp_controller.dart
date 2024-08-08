import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel/features/authentication/screen/signin/signin.dart';

class OtpController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  newPasswordToLogIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (passwordController.text.isEmpty) {
      Get.snackbar("Please Fill up ", "Set new password",
          colorText: Colors.red);
      return;
    }
    if (confirmPasswordController.text.isEmpty) {
      Get.snackbar("Please Fill up ", "Set confirm password",
          colorText: Colors.red);
      return;
    }

    String? password = passwordController.text.isEmpty
        ? "Password"
        : passwordController.text.length < 6
            ? "Password less than 8 characters"
            : null;
    String? confirmPassword = passwordController.text.isEmpty
        ? "Confirm Password"
        : confirmPasswordController.text.length < 6
            ? "Confirm Password less than 8 characters"
            : null;
    String? checkPassword =
        passwordController.text == confirmPasswordController.text
            ? "Successful"
            : "Please Correct Password";
    if (password != null) {
      Get.snackbar("Please set new password ", password, colorText: Colors.red);
    } else if (confirmPassword != null) {
      Get.snackbar("Please set confirm password", confirmPassword,
          colorText: Colors.red);
    } else if (password == confirmPassword) {
      Get.snackbar(
          "new password and confirm password not equal ", checkPassword,
          colorText: Colors.red);
    } else {
      Get.offAll(const SignIn());
      prefs.setString("password", passwordController.text).obs;
      update();
      passwordController.clear();
    }
  }
}
