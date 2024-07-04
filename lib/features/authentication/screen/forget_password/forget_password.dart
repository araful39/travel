import 'package:flutter/material.dart';
import 'package:travel/common/widgets/button/custom_eleveted_button.dart';
import 'package:travel/common/widgets/custom_text_field.dart';
import 'package:travel/utills/constants/icons.dart';
import 'package:travel/utills/constants/sizes.dart';
import 'package:travel/utills/constants/text.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
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
                const CustomTextField(hintText: "Email"),
                const SizedBox(
                  height: RSizes.lg,
                ),
                CustomButton(buttonName: RTexts.resetPassword, onPress: (){
                  showDialog(context: context, builder: (context){
                    return Dialog(

                      child: SizedBox(
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(RIcons.email),
                            SizedBox(
                              height: RSizes.md,
                            ),
                            Text(RTexts.checkEmail,style: TextStyle(fontSize: RSizes.md,fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: RSizes.sm,
                            ),
                            Text(RTexts.checkEmailSubTitle,textAlign: TextAlign.center,)
                          ],
                        ),
                      ),
                    );
                  }

                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}
