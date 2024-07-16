import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel/features/authentication/screen/splash/splash.dart';

import 'features/authentication/screen/otp_verification/otp_verification.dart';
import 'features/authentication/screen/signin/signin.dart';





void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs =await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
