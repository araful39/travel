import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel/features/authentication/screen/signin/signin.dart';
import 'package:travel/features/personalization/screen/edit_profile/edit_profile.dart';
import 'package:travel/features/personalization/screen/settings/settings.dart';
import 'package:travel/features/shop/screen/Favorite_places/favorite_places.dart';
import 'package:travel/features/shop/screen/popular_trip_package/popular_trip_package.dart';

class ProfileController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  RxString selectedImage = ''.obs;
  RxString name = ''.obs;
  RxString email = ''.obs;

  @override
  void onInit() {
    super.onInit();
    // TODO: implement onInit
    getImageData();
  }

  goToEditProfile() {
    Get.to(const EditProfile());
  }

  goToFavoritePlaces() {
    Get.to(const FavoritePlaces());
  }

  goToPopularTripPackage() {
    Get.to(const PopularTripPackage());
  }

  goToSettings() {
    Get.to(const Settings());
  }

  goToSignIn() async {
    Get.offAll(const SignIn());
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("isLogin", false);
  }

  getImageData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    selectedImage.value = prefs.getString("imagePath") ?? "";
    name.value = prefs.getString("name") ?? "";
    email.value = prefs.getString("email") ?? "";
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }
}
