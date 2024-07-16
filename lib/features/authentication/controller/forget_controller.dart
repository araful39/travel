import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel/features/authentication/screen/otp_verification/otp_verification.dart';
import 'package:travel/utills/constants/colors.dart';

class ForgetController extends GetxController{
  TextEditingController forgetPassController=TextEditingController();


  reSetPassword()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
     var email=prefs.getString("email");

    if (forgetPassController.text.isEmpty) {
      Get.snackbar("Please Fill up ", "Your Email", colorText: Colors.red);
      return;
    }
    if (!GetUtils.isEmail(forgetPassController.text)) {
      Get.snackbar("Please Fill up", "Enter a valid Email",
          colorText: Colors.red);
      return;
    }
     if(email !=forgetPassController.text){
       Get.snackbar("Please Fill up", "Enter a Correct Email",
           colorText: Colors.red);
       return;
     }
     else{
       Get.to(  OtpVerification());
     }






  }

}