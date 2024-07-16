import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel/features/authentication/screen/onboard/onboard.dart';
import 'package:travel/navigation_menu.dart';

class SplashController extends GetxController{


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(const Duration(seconds: 3),()async{
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      Rx<bool?> isLogin = prefs.getBool("isLogin").obs;

      isLogin.value == true ?await Get.offAll(const NavigationMenu()) :await Get.offAll(
          const OnboardScreen());
   } );
  }}