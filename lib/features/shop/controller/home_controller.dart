import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  RxBool isBookmark = false.obs;
  RxString selectedImage = ''.obs;
  RxString nameController = ''.obs;
  @override
  void onInit() {
    super.onInit();
    // TODO: implement onInit
    getImage();
  }

  addToBookMark() {
    isBookmark.value = !isBookmark.value;
  }

  getImage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    selectedImage.value = prefs.getString("imagePath") ?? " ";
    nameController.value = prefs.getString("name") ?? " ";
  }
}
