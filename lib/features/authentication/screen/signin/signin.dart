import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/common/widgets/button/custom_eleveted_button.dart';
import 'package:travel/common/widgets/button/text_button.dart';
import 'package:travel/common/widgets/custom_text_field.dart';
import 'package:travel/common/widgets/social_media/social_media.dart';
import 'package:travel/features/authentication/controller/signIn_controller.dart';
import 'package:travel/features/authentication/screen/forget_password/forget_password.dart';
import 'package:travel/features/authentication/screen/signup/signup.dart';

import 'package:travel/utills/constants/sizes.dart';
import 'package:travel/utills/constants/text.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final SignInController controller = Get.put(SignInController());
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 80, right: 20, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Column(
                  children: [
                    Text(
                      RTexts.singInTitle,
                      style: TextStyle(fontSize: RSizes.titleSize),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(RTexts.singInSubTitle),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomTextField(
                        hintText: 'Email',
                        controller: controller.emailController,
                      ),
                    ),
                    Obx(
                      () => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomTextField(
                          obscureText: controller.isTroggle.value,
                          onPressSuffix: controller.troggle,
                          hintText: 'Password',
                          suffixIcon: controller.isTroggle.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          controller: controller.passwordController,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomTextButton(
                            buttonName: RTexts.forgetPassword,
                            onPress: () {
                              Get.to(const ForgetPassword());
                            })
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomElevatedButton(
                        buttonName: RTexts.signIn,
                        onPress: controller.signInToNavigationMenu(
                            controller.emailController.text,
                            controller.passwordController.text)),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(RTexts.dontHavenAnAccount),
                        CustomTextButton(
                            buttonName: RTexts.singUp,
                            onPress: () {
                              Get.to(() => const SignUp());
                            })
                      ],
                    ),
                    const Text(RTexts.orConnect),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
                SocialMedia(
                  onPressFacebook: () {},
                  onPressInstagram: () {},
                  onPressTwiter: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
