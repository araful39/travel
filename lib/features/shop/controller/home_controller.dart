import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isBookmark = false.obs;
  // RxString selectedImage = ''.obs;

  addToBookMark() {
    isBookmark.value = !isBookmark.value;
  }
}
