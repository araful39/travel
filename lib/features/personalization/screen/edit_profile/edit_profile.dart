import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/common/widgets/custom_text_field.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset(
                    RIcons.backArrow,
                    height: 50,
                  ),
                ),
                const Text(
                  "Edit Profile",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      ),
                ),
                Text("Done",style: TextStyle(fontWeight: FontWeight.bold,color: RColores.splashColor),)
              ],
            ),
            Column(
              children: [
                Image.asset(RIcons.profileMask,),
                const Text(
                  "Raju",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const Text("Change Profile Picture",style: TextStyle(color: RColores.splashColor),)
              ],
            ),
            Column(
              children: [
                CustomTextField(hintText: "First Name",suffixIcon: Icons.check,),
                CustomTextField(hintText: "Last Name"),
                CustomTextField(hintText: "Location"),
                CustomTextField(hintText: "Mobile Number"),

              ],
            )
          ],
        ),
      ),
    );
  }
}
