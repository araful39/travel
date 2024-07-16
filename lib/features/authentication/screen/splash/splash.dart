import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel/features/authentication/controller/splash_controller.dart';

import 'package:travel/features/authentication/screen/onboard/onboard.dart';
import 'package:travel/navigation_menu.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/text.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    final SplashController controller=Get.put(SplashController());
    return const Scaffold(
      backgroundColor: RColores.splashColor,
      body: Center(
        child: Text(
          RTexts.splashTitle,
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
