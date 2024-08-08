import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel/features/authentication/screen/signin/signin.dart';
import 'package:travel/features/personalization/screen/edit_profile/edit_profile.dart';
import 'package:travel/features/personalization/screen/settings/settings.dart';
import 'package:travel/features/shop/screen/Favorite_places/favorite_places.dart';
import 'package:travel/features/shop/screen/popular_trip_package/popular_trip_package.dart';

class ProfileController extends GetxController {
  // RxString selectedImage = ''.obs;

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
    Get.offAll(SignIn());
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("isLogin", false);
  }

}
