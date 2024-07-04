import 'package:flutter/material.dart';
import 'package:travel/common/widgets/button/custom_eleveted_button.dart';
import 'package:travel/common/widgets/button/text_button.dart';
import 'package:travel/common/widgets/custom_text_field.dart';
import 'package:travel/common/widgets/social_media/social_media.dart';
import 'package:travel/utills/constants/sizes.dart';
import 'package:travel/utills/constants/text.dart';

class SingIn extends StatelessWidget {
  const SingIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                   Text(RTexts.singUpSubTitle),
                 ],
               ),
              Column(
                children: [
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
                  CustomButton(buttonName: RTexts.singIn, onPress: (){}),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(RTexts.dontHavenAnAccount),
                      CustomTextButton(buttonName: RTexts.singUp, onPress: () {  },)
                    ],
                  ),
                  const Text(RTexts.orConnect),
                ],
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




