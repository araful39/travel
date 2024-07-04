import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/common/widgets/button/custom_eleveted_button.dart';
import 'package:travel/common/widgets/button/text_button.dart';
import 'package:travel/common/widgets/custom_text_field.dart';
import 'package:travel/common/widgets/social_media/social_media.dart';
import 'package:travel/features/authentication/screen/signin/signin.dart';
import 'package:travel/utills/constants/sizes.dart';
import 'package:travel/utills/constants/text.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15,top: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  Column(
                    children: [
                      const CustomTextField(
                        hintText: 'Name',
                      ),
                      const CustomTextField(
                        hintText: 'Email',
                      ),
                      const CustomTextField(
                        hintText: 'Password',
                        suffixIcon: Icons.visibility_off,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                           Text(RTexts.passwordCharacter,style: TextStyle(fontSize: 12),)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: RSizes.md,
                      ),
                      CustomButton(buttonName: RTexts.singUp, onPress: (){}),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(RTexts.alreadyAccount),
                          CustomTextButton(buttonName: RTexts.signIn, onPress: () {
                            Get.to(()=> const SignIn());
                          },)
                        ],
                      ),
                      const Text(RTexts.orConnect),
                    ],
                  ),

                  const SizedBox(
                    height: 50,
                  ),
                  SocialMedia(onPressFacebook: () {  }, onPressInstagram: () {  }, onPressTwiter: () {  },)
          
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
