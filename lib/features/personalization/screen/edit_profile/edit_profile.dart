import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/common/widgets/custom_text_field.dart';
import 'package:travel/data/image_picker_profile.dart';
import 'package:travel/features/personalization/controller/editprofile_controller.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';
import 'package:travel/utills/constants/sizes.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final EditProfileController controller = Get.put(EditProfileController());
    return SafeArea(
      child: Obx(
        ()=> Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Edit Profile"),
            actions: [
              InkWell(
                onTap: () {
                  // Get.offAll(()=>const NavigationMenu());
                },
                child: const Text(
                  "Done",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: RColores.splashColor,
                      fontSize: 20),
                ),
              ),
              const SizedBox(
                width: RSizes.md,
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                children: [
                   Column(
                    children: [
                      CircleAvatar(
                            radius: 80,
                            backgroundImage: (image == null)
                                ? const AssetImage(
                                    RIcons.profileMask,
                                  )
                                : FileImage(
                                    image!,
                                  ) ,
                          ),
                      const SizedBox(
                        height: RSizes.sm,
                      ),
                      const Text(
                        "Raju",
                        style:
                            TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: controller.changeImage,
                        child: const Text(
                          "Change Profile Picture",
                          style: TextStyle(color: RColores.splashColor),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: RSizes.md,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomTextField(
                          hintText: "First Name",
                          suffixIcon: Icons.check,
                          controller: controller.firstController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomTextField(
                          hintText: "Last Name",
                          controller: controller.lastController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomTextField(
                          hintText: "Email",
                          controller: controller.emailController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomTextField(
                          hintText: "Mobile Number",
                          controller: controller.phoneController,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
      ),
      ),
    );
  }
}
