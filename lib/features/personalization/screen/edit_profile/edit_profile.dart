import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel/common/widgets/custom_text_field.dart';
import 'package:travel/data/image_picker_profile.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';
import 'package:travel/utills/constants/sizes.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController firstController=TextEditingController();
  TextEditingController lastController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController phoneController=TextEditingController();


  String? myImagePath;
  ImagePicker picker = ImagePicker();
  Future getImage(ImageSource source) async {
    SharedPreferences pref=await SharedPreferences.getInstance();
    final photo = await picker.pickImage(source: source,);
   if(photo==null) return;
   image=File(photo.path);

setState(() {

});
      await pref.setString('imagePath',photo.path);

  }
  @override
  void initState() {
    _loadImageFromPrefs();
    super.initState();
  }
  Future<void> _loadImageFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? imagePath = prefs.getString('imagePath');
    if (imagePath != null) {
      setState(() {
        image = File(imagePath);
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                          : FileImage(image!,) as ImageProvider,
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
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: RColores.white,
                            content: SizedBox(
                              height: 150,
                              width: double.infinity,
                              child: Column(
                                children: [
                                  const Text("Select"),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          getImage(ImageSource.gallery);                                        },
                                        child: const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Gallary",
                                              style: TextStyle(
                                                  color: RColores.splashColor,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Icon(
                                              Icons.add_chart_rounded,
                                              size: 80,
                                              color: RColores.splashColor,
                                            )
                                          ],
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          getImage(ImageSource.camera);                                        },
                                        child: const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Cammera",
                                              style: TextStyle(
                                                  color: RColores.splashColor,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Icon(
                                              Icons.camera_alt_outlined,
                                              size: 80,
                                              color: RColores.splashColor,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )));
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
                        suffixIcon: Icons.check, controller: firstController,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomTextField(hintText: "Last Name",controller: lastController,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomTextField(hintText: "Email",controller: emailController,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomTextField(hintText: "Mobile Number",controller: phoneController,),
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
