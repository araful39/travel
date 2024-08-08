import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel/features/personalization/controller/profile_controller.dart';
import 'package:travel/features/shop/controller/home_controller.dart';

class EditProfileController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  ImagePicker picker = ImagePicker();
  RxString selectedImage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    // TODO: implement onInit
    getSp();
  }

  selectImage(ImageSource source) async {
    final pickedImage = await picker.pickImage(
      source: source,
    );
    selectedImage.value = pickedImage?.path ?? "";
  }

  setSp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("name", nameController.text);
    await prefs.setString("email", emailController.text);
    await prefs.setString("mobile", passwordController.text);
    await prefs.setString("imagePath", selectedImage.value);
    ProfileController controller = Get.put(ProfileController());
    controller.getImageData();
    HomeController homeController = Get.put(HomeController());
    homeController.getImage();
    homeController.nameController;
    Get.back();
    Get.snackbar("Success", "Profile Updated",
        snackPosition: SnackPosition.BOTTOM);
  }

  getSp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    selectedImage.value = prefs.getString("imagePath") ?? "";
    nameController.text = prefs.getString("name") ?? "";
    emailController.text = prefs.getString("email") ?? "";
    passwordController.text = prefs.getString("password") ?? "";
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
