import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/common/widgets/button/custom_eleveted_button.dart';
import 'package:travel/common/widgets/button/text_button.dart';
import 'package:travel/common/widgets/custom_text_field.dart';
import 'package:travel/common/widgets/social_media/social_media.dart';
import 'package:travel/features/authentication/screen/signup/signup.dart';
import 'package:travel/features/shop/screen/home/home.dart';
import 'package:travel/utills/constants/sizes.dart';
import 'package:travel/utills/constants/text.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15,top: 90),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
               const Text(
                 RTexts.singInTitle,
                 style: TextStyle(fontSize: RSizes.titleSize),
               ),
               const SizedBox(
                 height: 10,
               ),
               const Text(RTexts.singInSubTitle),
              const CustomTextField(
                hintText: 'Email',
              ),
              const CustomTextField(
                hintText: 'Password',
                suffixIcon: Icons.visibility_off,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomTextButton(buttonName: RTexts.forgetPassword, onPress: (){})
                ],
              ),
              CustomButton(buttonName: RTexts.signIn, onPress: (){
                Get.to(()=> const Home());
              }),
                const SizedBox(
                  height: 30,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   const Text(RTexts.dontHavenAnAccount),
                  CustomTextButton(buttonName: RTexts.singUp, onPress: (){
                    Get.to(()=> const SignUp());
                  })
                ],
              ),
              const Text(RTexts.orConnect),
                const SizedBox(
                  height: 50,
                ),
                SocialMedia(onPressFacebook: () {  }, onPressInstagram: () {  }, onPressTwiter: () {  },)

              ],
            ),
          ),
        ),
      ),
    );
  }
}




