import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/common/widgets/button/custom_eleveted_button.dart';
import 'package:travel/common/widgets/button/text_button.dart';
import 'package:travel/common/widgets/custom_text_field.dart';
import 'package:travel/common/widgets/social_media/social_media.dart';
import 'package:travel/features/authentication/controller/signup_controller.dart';
import 'package:travel/utills/constants/sizes.dart';
import 'package:travel/utills/constants/text.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final SignupController controller = Get.put(SignupController());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Column(
                    children: [
                      Text(
                        RTexts.singUpTitle,
                        style: TextStyle(fontSize: RSizes.titleSize),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(RTexts.singUpSubTitle),
                    ],
                  ),
                  const SizedBox(
                    height: RSizes.md,
                  ),
                  Column(
                    children: [
                      CustomTextField(
                        hintText: 'Name',
                        controller: controller.nameController,
                      ),
                      const SizedBox(
                        height: RSizes.md,
                      ),
                      CustomTextField(
                        hintText: 'Email',
                        controller: controller.emailController,
                      ),
                      const SizedBox(
                        height: RSizes.md,
                      ),
                      Obx(
                        () => CustomTextField(
                          obscureText: controller.isTroggle.value,
                          hintText: 'Password',
                          onPressSuffix: controller.troggle,
                          suffixIcon: controller.isTroggle.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          controller: controller.passwordController,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              RTexts.passwordCharacter,
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: RSizes.md,
                      ),
                      CustomElevatedButton(
                          buttonName: RTexts.singUp,
                          onPress: controller.signUpToNavigationMenu(
                              controller.nameController.text,
                              controller.emailController.text,
                              controller.passwordController.text)),
                      const SizedBox(
                        height: RSizes.md,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(RTexts.alreadyAccount),
                          CustomTextButton(
                            buttonName: RTexts.signIn,
                            onPress: controller.getToSignIn,
                          )
                        ],
                      ),
                      const Text(RTexts.orConnect),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SocialMedia(
                    onPressFacebook: controller.signUpFacebook,
                    onPressInstagram: controller.signUpInstagram,
                    onPressTwiter: controller.signUpTwitter,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
