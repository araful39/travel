import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:travel/features/authentication/screen/onboard/onboard.dart';
import 'package:travel/navigation_menu.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/text.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),()async{
      final SharedPreferences prefs = await SharedPreferences.getInstance();
     var isLogin= prefs.getBool("isLogin");

     isLogin==true? Get.offAll(const NavigationMenu()) :Get.offAll(const OnboardScreen());

    });
  }


  @override
  Widget build(BuildContext context) {
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
