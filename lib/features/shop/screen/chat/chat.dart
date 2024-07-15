import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travel/common/widgets/custom_text_field.dart';
import 'package:travel/data/image_picker_chat.dart';
import 'package:travel/features/shop/screen/chat/widget/custome_massages_card.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';
import 'package:travel/utills/constants/sizes.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  ImagePicker picker = ImagePicker();
  Future getImageFromCamera() async {
    final photo = await picker.pickImage(source: ImageSource.camera,requestFullMetadata: false,preferredCameraDevice: CameraDevice.front);
    if(photo==null) return;
    setState(() {
      chatFile = File(photo.path);
    });
  }
  Future getImageFromGallery() async {
    final photo = await picker.pickImage(source: ImageSource.gallery,);
    if(photo==null) return;
    setState(() {
      chatFile = File(photo.path);
    });
  }

  TextEditingController chatController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

          centerTitle: true,
          title: const Column(
            children: [
              Text(
                "Sajib Rahman",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "Active Now",
                style: TextStyle(color: RColores.splashColor, fontSize: 15),
              )
            ],
          ),
          actions: const [
            Icon(Icons.call),
            SizedBox(
              width: RSizes.md,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomMassages(
                      massages: 'Today',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomMassages(
                      massages: 'Hello! 9:24 ',
                      color: RColores.splashColor.withOpacity(0.1),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomMassages(
                      width: 250,
                      massages:
                          'Thank you very mouch for your traveling, we really like the apartments. we will stay here for anather 5 days...',
                        color: RColores.splashColor.withOpacity(0.1),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
            Image.asset(RIcons.person4,height: 80,),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomMassages(
                          massages: 'Hello! 9:34',
                        ),
                        CustomMassages(
                          massages: 'I’m very glab you like it👍  9:35',
                        ),

                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(RIcons.person4),
                    const CustomMassages(
                      width: 250,
                      massages:
                      'Thank you very mouch for your traveling, we really like the apartments. we will stay here for anather 5 days...',

                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomMassages(
                      massages: 'I will be at home  9:39',
                      color: RColores.splashColor.withOpacity(0.1),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomMassages(
                      massages: 'Today',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomMassages(
                      massages: 'Hello! 9:24 ',
                      color: RColores.splashColor.withOpacity(0.1),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomMassages(
                      width: 250,
                      massages:
                      'Thank you very mouch for your traveling, we really like the apartments. we will stay here for anather 5 days...',
                      color: RColores.splashColor.withOpacity(0.1),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(RIcons.person4,height: 80,),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomMassages(
                          massages: 'Hello! 9:34',
                        ),
                        CustomMassages(
                          massages: 'I’m very glab you like it👍  9:35',
                        ),

                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(RIcons.person4),
                    const CustomMassages(
                      width: 250,
                      massages:
                      'Thank you very mouch for your traveling, we really like the apartments. we will stay here for anather 5 days...',

                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomMassages(
                      massages: 'I will be at home  9:39',
                      color: RColores.splashColor.withOpacity(0.1),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomMassages(
                      massages: 'Today',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomMassages(
                      massages: 'Hello! 9:24 ',
                      color: RColores.splashColor.withOpacity(0.1),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomMassages(
                      width: 250,
                      massages:
                      'Thank you very mouch for your traveling, we really like the apartments. we will stay here for anather 5 days...',
                      color: RColores.splashColor.withOpacity(0.1),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(RIcons.person4,height: 80,),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomMassages(
                          massages: 'Hello! 9:34',
                        ),
                        CustomMassages(
                          massages: 'I’m very glab you like it👍  9:35',
                        ),

                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(RIcons.person4),
                    const CustomMassages(
                      width: 250,
                      massages:
                      'Thank you very mouch for your traveling, we really like the apartments. we will stay here for anather 5 days...',

                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomMassages(
                      massages: 'I will be at home  9:39',
                      color: RColores.splashColor.withOpacity(0.1),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8
          ),
          child: Row(
            children: [
               Expanded(
                  flex: 8,
                  child: CustomTextField(
                    hintText: "Type you messages",
                    suffixIcon: Icons.attach_file,
                    onPressSuffix: (){
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
                                        getImageFromGallery();                                        },
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
                                        getImageFromCamera();                                        },
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
                    }, controller: chatController,
                  )),
              Expanded(
                  flex: 2,
                  child: InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                          radius: 25,
                          backgroundColor: RColores.splashColor,
                          child: Icon(
                            Icons.mic,
                            color: RColores.white,
                            size: 35,
                          ))))
            ],
          ),
        ),
      ),
    );
  }
}
