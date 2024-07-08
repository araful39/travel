import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/common/widgets/button/custom_eleveted_button.dart';
import 'package:travel/common/widgets/button/text_button.dart';
import 'package:travel/features/authentication/screen/otp_verification/widget/otp.dart';
import 'package:travel/features/authentication/screen/signin/signin.dart';
import 'package:travel/utills/constants/sizes.dart';
import 'package:travel/utills/constants/text.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 12,left: 12,top: 50),
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
                        RTexts.otpVerification,
                        style: TextStyle(fontSize: RSizes.lg,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(RTexts.otpSubTitle,textAlign: TextAlign.center,),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            RTexts.otpCode,
                            style: TextStyle(fontSize: RSizes.md,fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              OtpCodeField(otp: '5',),
                              OtpCodeField(otp: '6',),
                              OtpCodeField(otp: '2',),
                              OtpCodeField(otp: '9',),
        
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: RSizes.md,
                ),
                CustomButton(buttonName: RTexts.verify, onPress: (){
                  Get.to(()=>const SignIn());
                }),
                const SizedBox(
                  height: RSizes.sm,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextButton(buttonName: RTexts.otpResend, onPress: (){

                    }),
                    const Text(RTexts.otpTime)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

