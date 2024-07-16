import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/common/widgets/button/custom_eleveted_button.dart';
import 'package:travel/common/widgets/custom_text_field.dart';
import 'package:travel/features/authentication/controller/forget_controller.dart';
import 'package:travel/utills/constants/sizes.dart';
import 'package:travel/utills/constants/text.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final ForgetController controller=Get.put(ForgetController());
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body:  Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 12,left: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        RTexts.forgetPassword,
                        style: TextStyle(fontSize: RSizes.lg,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(RTexts.forgetSubTitle,textAlign: TextAlign.center,),
                    ],
                  ),
                ),
                const SizedBox(
                  height: RSizes.xl,
                ),
                 CustomTextField(hintText: "Email", controller: controller.forgetPassController,),
                const SizedBox(
                  height: RSizes.lg,
                ),
                CustomElevatedButton(buttonName: RTexts.resetPassword, onPress: controller.reSetPassword


    )
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}
