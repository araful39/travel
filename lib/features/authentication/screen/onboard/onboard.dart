import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel/common/widgets/button/custom_eleveted_button.dart';
import 'package:travel/data/onboard_list/onboard_list.dart';
import 'package:travel/features/authentication/screen/onboard/widget/custom_onboad.dart';
import 'package:travel/features/shop/screen/home/home.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _controller = PageController();
  var isTrue = true;
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            onPageChanged: (value) {
              setState(() {
                index=value;
                // print(value);
                if (index == 0) {
                  isTrue = true;
                  print(isTrue);
                  print(value);
                } else if (index > 0) {
                  isTrue = false;
                }
              });
            },
            controller: _controller,
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
                  _controller.jumpToPage(2);
                },
              )),
          Container(
            alignment: const Alignment(0, 0.75),
            child: SmoothPageIndicator(
              controller: _controller,
              count: onboardData.length,
              effect: const WormEffect(
                  paintStyle: PaintingStyle.stroke, dotWidth: 30),
            ),
          ),
          isTrue
              ? Container(
              alignment: const Alignment(0, 0.95),
              child: CustomButton(
                  buttonName: "Get",
                  onPress: () {
                    _controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  }))
              : Container(
              alignment: const Alignment(0, 0.95),
              child: CustomButton(
                  buttonName: "Next",
                  onPress: () {
                    if(index == 2){
                      Get.offAll(const Home());
                    }else{
                      _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    }}
              ))
        ],
      ),
    );
  }
}
