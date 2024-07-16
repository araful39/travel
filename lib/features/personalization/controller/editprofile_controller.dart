

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel/data/image_picker_profile.dart';

class EditProfileController extends GetxController {
  TextEditingController firstController = TextEditingController();
  TextEditingController lastController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  ImagePicker picker = ImagePicker();

  changeImage() {
    // Get.bottomSheet(
    //     Column(
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    //         Text(
    //           "Gallary",
    //           style: TextStyle(
    //               color: RColores.splashColor,
    //               fontSize: 25,
    //               fontWeight: FontWeight.bold),
    //         ),
    //         Icon(
    //           Icons.add_chart_rounded,
    //           size: 80,
    //           color: RColores.splashColor,
    //         )
    //       ],
    //     ),
    //     barrierColor: RColores.red,
    //     isDismissible: false,
    // //     enableDrag: false);
    // InkWell(
    //   onTap: () {
    //     getImage(ImageSource.camera);
    //   },
    //   child: const Column(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       Text(
    //         "Cammera",
    //         style: TextStyle(
    //             color: RColores.splashColor,
    //             fontSize: 25,
    //             fontWeight: FontWeight.bold),
    //       ),
    //       Icon(
    //         Icons.camera_alt_outlined,
    //         size: 80,
    //         color: RColores.splashColor,
    //       )
    //     ],
    //   ),
    // );
  }

  Future<void> getImage(ImageSource source) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final photo = await picker.pickImage(
      source: source,
    );
    if (photo == null) return;
    await pref.setString('imagePath', photo.path);
    update();
  }

  @override
  void onInit() {
    loadImageFromPrefs();
    super.onInit();
  }

  Future<void> loadImageFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? imagePath = prefs.getString('imagePath');
    if (imagePath != null) {
      image = File(imagePath);
    }
    update();
  }
}
