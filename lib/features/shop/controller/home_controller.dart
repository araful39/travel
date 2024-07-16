import 'dart:io';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel/data/bookmark_list.dart';
import 'package:travel/data/image_picker_profile.dart';

class HomeController extends GetxController {
  RxBool isBookmark = false.obs;
  RxString name="".obs;






  addToBookMark() {
    isBookmark.value = !isBookmark.value;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    dataGetToSp();
  }

  dataGetToSp()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
     name.value = prefs.getString("name")!;

    update();
  }



}
