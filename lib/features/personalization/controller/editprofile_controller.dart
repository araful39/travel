import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel/data/image_picker_profile.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/sizes.dart';

class EditProfileController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  ImagePicker picker = ImagePicker();
  RxString selectedImage = ''.obs;
  RxString name = ''.obs;
  // RxString email = ''.obs;
  // RxString password = ''.obs;


  getImage(ImageSource source) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final pickedImage  = await picker.pickImage(
      source: source,
    );
    if (pickedImage  == null) return;
     await pref.setString('imagePath', pickedImage .path);
    selectedImage.value=pickedImage .path;
    update();
  }

  @override
  void onInit() {
    getSp();
    super.onInit();
  }

  setSp()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("name", nameController.text);
    prefs.setString("email", emailController.text);
    prefs.setString("mobile", phoneController.text);
ChangeNotifier();
    update();
      Get.back();

  }

  Future<void> getSp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
   selectedImage.value = prefs.getString("imagePath") ?? "";
   nameController.text = prefs.getString("name") ?? "";
    emailController.text = prefs.getString("email") ?? "";
    name.value=nameController.text;

   update();
  }
}
