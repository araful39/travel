import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:travel/features/authentication/screen/signin/signin.dart';
import 'package:travel/features/personalization/controller/editprofile_controller.dart';
import 'package:travel/features/personalization/controller/profile_controller.dart';
import 'package:travel/features/personalization/screen/profile/widget/point_card.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';
import 'package:travel/utills/constants/sizes.dart';
import 'package:travel/utills/constants/text.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileController controller = Get.put(ProfileController());
    final EditProfileController editProfileController = EditProfileController();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "Profile",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: RColores.black),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Obx(
                  () => Column(
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: editProfileController
                                .selectedImage.isEmpty
                            ? const AssetImage(
                                RIcons.profileMask,
                              )
                            : FileImage(
                                File(editProfileController.selectedImage.value),
                              ),
                      ),
                      const SizedBox(
                        height: RSizes.sm,
                      ),
                      Text(
                        editProfileController.nameController.text,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(editProfileController.emailController.text)
                    ],
                  ),
                ),
                const SizedBox(
                  height: RSizes.xl,
                ),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PointCard(
                        name: "Reward Points",
                        point: 360,
                      ),
                      PointCard(
                        name: "Travel Trips",
                        point: 238,
                      ),
                      PointCard(
                        name: "Bucket List",
                        point: 473,
                      ),
                    ]),
                const SizedBox(
                  height: RSizes.xl,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: controller.goToEditProfile,
                      child: ListTile(
                        leading: Image.asset(
                          RIcons.profile,
                          height: 20,
                        ),
                        title: const Text(
                          RTexts.editProfile,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ),
                    InkWell(
                      onTap: controller.goToFavoritePlaces,
                      child: ListTile(
                        leading: Image.asset(
                          RIcons.bookmark,
                          height: 20,
                        ),
                        title: const Text(
                          RTexts.bookMarked,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ),
                    InkWell(
                      onTap: controller.goToPopularTripPackage,
                      child: ListTile(
                        leading: Image.asset(
                          RIcons.trip,
                          height: 20,
                        ),
                        title: const Text(
                          RTexts.previousTrips,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ),
                    InkWell(
                      onTap: controller.goToSettings,
                      child: ListTile(
                        leading: Image.asset(
                          RIcons.settings,
                          height: 20,
                        ),
                        title: const Text(
                          RTexts.settings,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        leading: Image.asset(
                          RIcons.version,
                          height: 20,
                        ),
                        title: const Text(
                          RTexts.version,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        Get.off(const SignIn());
                        prefs.setBool("isLogin", false).obs;
                      },
                      child: const ListTile(
                        leading: Icon(
                          Icons.logout,
                          color: RColores.splashColor,
                        ),
                        title: Text(
                          RTexts.logout,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
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
