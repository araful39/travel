import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditProfileController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  ImagePicker picker = ImagePicker();
  RxString selectedImage = ''.obs;
  // RxString name = 'Rakib'.obs;
  // RxString email = 'rakib39@gmail.com'.obs;
  // RxString password = ''.obs;
  @override
  void onInit() {
    super.onInit();
    // TODO: implement onInit
    getSp();
  }

  selectImage(ImageSource source) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final pickedImage = await picker.pickImage(
      source: source,
    );
    if (pickedImage == null) return;
    await pref.setString('imagePath', pickedImage.path);
    selectedImage.value = pickedImage.path;
  }

  setSp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("name", nameController.text);
    await prefs.setString("email", emailController.text);
    await prefs.setString("mobile", phoneController.text);
    await prefs.setString("imagePath", selectedImage.value);
    Get.snackbar("Success", "Profile Updated",
        snackPosition: SnackPosition.BOTTOM);
  }

  getSp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    selectedImage.value = prefs.getString("imagePath") ?? "";
    nameController.text = prefs.getString("name") ?? "";
    emailController.text = prefs.getString("email") ?? "";
  }
}
