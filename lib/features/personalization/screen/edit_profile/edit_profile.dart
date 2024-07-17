import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
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
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Edit Profile"),
          actions: [
            InkWell(
              onTap: controller.setSp,
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
                    Obx(
                ()=> CircleAvatar(
                        radius: 80,
                        backgroundImage: controller.selectedImage.isEmpty
                            ? const AssetImage(
                                RIcons.profileMask,
                              )
                            : FileImage(
                                File(controller.selectedImage.value),
                              ),
                      ),
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
                      onTap: (){

                          Get.bottomSheet(
                            backgroundColor: RColores.white,
                            SizedBox(
                              height: 150,
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Cammera",
                                        style: TextStyle(
                                            color: RColores.splashColor,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      InkWell(
                                        onTap: (){
                                          controller.getImage(ImageSource.camera);
                                          Get.back();
                                        },
                                        child: const Icon(
                                          Icons.camera_alt_outlined,
                                          size: 50,
                                          color: RColores.splashColor,
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Gallary",
                                        style: TextStyle(
                                            color: RColores.splashColor,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      InkWell(
                                        onTap: (){
                                          controller.getImage(ImageSource.gallery);
                                          Get.back();
                                        },
                                        child: const Icon(
                                          Icons.add_chart_rounded,
                                          size: 50,
                                          color: RColores.splashColor,
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          );



                      },
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
                        controller: controller.nameController,
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
    );
  }
}
