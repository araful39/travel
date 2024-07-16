import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/common/widgets/button/custom_eleveted_button.dart';
import 'package:travel/common/widgets/custom_text_field.dart';
import 'package:travel/features/authentication/controller/otp_controller.dart';
import 'package:travel/utills/constants/text.dart';

class OtpVerification extends StatelessWidget {
   OtpVerification({super.key});
final OtpController controller=Get.put(OtpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          SizedBox(
              width: 150,
              child: CustomTextField(
                fontSize: 30,

                  hintText: '', controller: controller.passwordController)),
              SizedBox(
                height: 40,
              ),
              CustomElevatedButton(buttonName: RTexts.newPassword, onPress: controller.newPasswordToLogIn),

            ],
          ),
        ),
      ),
    );
  }
}

