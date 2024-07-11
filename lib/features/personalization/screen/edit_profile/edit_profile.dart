import 'package:flutter/material.dart';
import 'package:travel/common/widgets/custom_text_field.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';
import 'package:travel/utills/constants/sizes.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text( "Edit Profile"),
          actions:  [
            InkWell(
              onTap: (){

              },
              child: const Text(
                "Done",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: RColores.splashColor,fontSize: 20),
              ),
            ),
            const SizedBox(
              width: RSizes.md,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            children: [

              Column(
                children: [
                  Image.asset(
                    RIcons.profileMask,
                  ),
                  const Text(
                    "Raju",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Change Profile Picture",
                    style: TextStyle(color: RColores.splashColor),
                  )
                ],
              ),
              const Column(
                children: [
                  CustomTextField(
                    hintText: "First Name",
                    suffixIcon: Icons.check,
                  ),
                  CustomTextField(hintText: "Last Name"),
                  CustomTextField(hintText: "Location"),
                  CustomTextField(hintText: "Mobile Number"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
