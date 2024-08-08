import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel/common/widgets/button/custom_eleveted_button.dart';
import 'package:travel/data/onboard_list/onboard_list.dart';
import 'package:travel/features/authentication/controller/on_boarding_controller.dart';
import 'package:travel/features/authentication/screen/onboard/widget/custom_onboad.dart';
import 'package:travel/features/authentication/screen/signin/signin.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  OnBoardingController onBoardingController = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Stack(
          children: [
            PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  onBoardingController.index.value = value;
                  // print(value);
                  if (onBoardingController.index.value == 0) {
                    onBoardingController.isTrue.value = true;
                    // print(isTrue);
                    // print(value);
                  } else if (onBoardingController.index > 0) {
                    onBoardingController.isTrue.value = false;
                  }
                });
              },
              controller: onBoardingController.controller,
              itemCount: onboardData.length,
              itemBuilder: (context, index) {
                return CustomOnboarding(
                  imagePath: onboardData[index].imagePath,
                  mainTitle: onboardData[index].mainTitle,
                  subTitle: onboardData[index].subTitle,
                  vector: onboardData[index].vector,
                  description: onboardData[index].description,
                );
              },
            ),
            Container(
                alignment: const Alignment(0.80, -0.80),
                child: GestureDetector(
                  child: const Text(
                    "Skip",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                  onTap: () {
                    onBoardingController.controller.jumpToPage(2);
                  },
                )),
            Container(
              alignment: const Alignment(0, 0.75),
              child: SmoothPageIndicator(
                controller: onBoardingController.controller,
                count: onboardData.length,
                effect: const WormEffect(
                    paintStyle: PaintingStyle.stroke, dotWidth: 30),
              ),
            ),
            onBoardingController.isTrue.value
                ? Container(
                    alignment: const Alignment(0, 0.95),
                    child: CustomElevatedButton(
                        buttonName: "Get",
                        onPress: () {
                          onBoardingController.controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        }))
                : Container(
                    alignment: const Alignment(0, 0.95),
                    child: CustomElevatedButton(
                        buttonName: "Next",
                        onPress: () {
                          if (onBoardingController.index.value == 2) {
                            Get.offAll(const SignIn());
                          } else {
                            onBoardingController.controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          }
                        })),
          ],
        ),
      ),
    );
  }
}
